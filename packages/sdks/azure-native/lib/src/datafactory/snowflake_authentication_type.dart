/// The type used for authentication. Type: string.
enum SnowflakeAuthenticationType {
  basic("Basic"),
  keyPair("KeyPair"),
  aADServicePrincipal("AADServicePrincipal");

  const SnowflakeAuthenticationType(this.wireValue);
  final String wireValue;

  static SnowflakeAuthenticationType fromValue(String value) {
    for (final item in SnowflakeAuthenticationType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SnowflakeAuthenticationType value: $value');
  }
}
