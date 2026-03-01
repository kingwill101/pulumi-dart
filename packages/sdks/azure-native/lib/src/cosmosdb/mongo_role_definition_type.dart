/// Indicates whether the Role Definition was built-in or user created.
enum MongoRoleDefinitionType {
  valueBuiltInRole("BuiltInRole"),
  valueCustomRole("CustomRole");

  const MongoRoleDefinitionType(this.value);
  final String value;

  static MongoRoleDefinitionType fromValue(String value) {
    for (final item in MongoRoleDefinitionType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown MongoRoleDefinitionType value: $value');
  }
}

