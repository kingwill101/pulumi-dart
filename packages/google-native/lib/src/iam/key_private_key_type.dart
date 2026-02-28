/// The output format of the private key. The default value is `TYPE_GOOGLE_CREDENTIALS_FILE`, which is the Google Credentials File format.
enum KeyPrivateKeyType {
  typeUnspecified("TYPE_UNSPECIFIED"),
  typePkcs12File("TYPE_PKCS12_FILE"),
  typeGoogleCredentialsFile("TYPE_GOOGLE_CREDENTIALS_FILE");

  const KeyPrivateKeyType(this.value);
  final String value;

  static KeyPrivateKeyType fromValue(String value) {
    for (final item in KeyPrivateKeyType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown KeyPrivateKeyType value: $value');
  }
}

