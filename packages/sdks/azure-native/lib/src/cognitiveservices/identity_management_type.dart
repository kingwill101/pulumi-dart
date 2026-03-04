/// Enumeration of identity types, from the perspective of management.
enum IdentityManagementType {
  valueSystem("System"),
  valueUser("User"),
  valueNone("None");

  const IdentityManagementType(this.wireValue);
  final String wireValue;

  static IdentityManagementType fromValue(String value) {
    for (final item in IdentityManagementType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown IdentityManagementType value: $value');
  }
}
