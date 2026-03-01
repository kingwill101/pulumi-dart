/// The method that should be used to authenticate the user.
enum ClientCredentialMethod {
  valueClientSecretPost("ClientSecretPost");

  const ClientCredentialMethod(this.value);
  final String value;

  static ClientCredentialMethod fromValue(String value) {
    for (final item in ClientCredentialMethod.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ClientCredentialMethod value: $value');
  }
}

