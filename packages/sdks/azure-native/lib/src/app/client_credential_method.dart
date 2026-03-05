/// The method that should be used to authenticate the user.
enum ClientCredentialMethod {
  valueClientSecretPost("ClientSecretPost");

  const ClientCredentialMethod(this.wireValue);
  final String wireValue;

  static ClientCredentialMethod fromValue(String value) {
    for (final item in ClientCredentialMethod.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ClientCredentialMethod value: $value');
  }
}

