/// The type of the authentication for the origin.
enum OriginAuthenticationType {
  systemAssignedIdentity("SystemAssignedIdentity"),
  userAssignedIdentity("UserAssignedIdentity");

  const OriginAuthenticationType(this.wireValue);
  final String wireValue;

  static OriginAuthenticationType fromValue(String value) {
    for (final item in OriginAuthenticationType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown OriginAuthenticationType value: $value');
  }
}
