git clone https://github.com/thainquet/react-native-template-typescript
cp -R "react-native-template-typescript/template/src/" "src/"
cp -f "react-native-template-typescript/template/App.tsx" "App.tsx"
sed '4,$d' package.json > out.txt
sed -n '4,$p' react-native-template-typescript/template/package.json >> out.txt
cp -f out.txt package.json
rm -rf react-native-template-typescript/
rm out.txt
yarn
npx pod-install
