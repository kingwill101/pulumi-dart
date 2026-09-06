import 'package:pulumi/pulumi.dart' as pulumi;

/// Indicates whether the Role Definition was built-in or user created.
enum MongoRoleDefinitionType implements pulumi.PulumiEnum<String> {
  valueBuiltInRole("BuiltInRole"),
  valueCustomRole("CustomRole");

  const MongoRoleDefinitionType(this.wireValue);
  @override
  final String wireValue;

  static MongoRoleDefinitionType fromValue(String value) {
    for (final item in MongoRoleDefinitionType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown MongoRoleDefinitionType value: $value');
  }
}
