/// Indicates whether the Role Definition was built-in or user created.
enum RoleDefinitionType {
  valueBuiltInRole("BuiltInRole"),
  valueCustomRole("CustomRole");

  const RoleDefinitionType(this.value);
  final String value;

  static RoleDefinitionType fromValue(String value) {
    for (final item in RoleDefinitionType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown RoleDefinitionType value: $value');
  }
}

