/// Enumeration of identity types, from the perspective of management.
enum IdentityManagementType {
  system("System"),
  user("User"),
  none("None");

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
