/// The type of the authentication for the origin.
enum OriginAuthenticationType {
  systemAssignedIdentity("SystemAssignedIdentity"),
  userAssignedIdentity("UserAssignedIdentity");

  const OriginAuthenticationType(this.value);
  final String value;

  static OriginAuthenticationType fromValue(String value) {
    for (final item in OriginAuthenticationType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown OriginAuthenticationType value: $value');
  }
}

