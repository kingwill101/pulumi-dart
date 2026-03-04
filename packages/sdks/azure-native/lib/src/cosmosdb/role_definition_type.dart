/// Indicates whether the Role Definition was built-in or user created.
enum RoleDefinitionType {
  valueBuiltInRole("BuiltInRole"),
  valueCustomRole("CustomRole");

  const RoleDefinitionType(this.wireValue);
  final String wireValue;

  static RoleDefinitionType fromValue(String value) {
    for (final item in RoleDefinitionType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown RoleDefinitionType value: $value');
  }
}
