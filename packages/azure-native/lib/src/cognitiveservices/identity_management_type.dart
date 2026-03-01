/// Enumeration of identity types, from the perspective of management.
enum IdentityManagementType {
  valueSystem("System"),
  valueUser("User"),
  valueNone("None");

  const IdentityManagementType(this.value);
  final String value;

  static IdentityManagementType fromValue(String value) {
    for (final item in IdentityManagementType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown IdentityManagementType value: $value');
  }
}

