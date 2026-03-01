/// The type used for authentication. Type: string.
enum SnowflakeAuthenticationType {
  valueBasic("Basic"),
  valueKeyPair("KeyPair"),
  valueAADServicePrincipal("AADServicePrincipal");

  const SnowflakeAuthenticationType(this.value);
  final String value;

  static SnowflakeAuthenticationType fromValue(String value) {
    for (final item in SnowflakeAuthenticationType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SnowflakeAuthenticationType value: $value');
  }
}

