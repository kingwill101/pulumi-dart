import 'package:pulumi/pulumi.dart' as pulumi;

/// Indicates whether the Role Definition was built-in or user created.
enum RoleDefinitionType implements pulumi.PulumiEnum<String> {
  valueBuiltInRole("BuiltInRole"),
  valueCustomRole("CustomRole");

  const RoleDefinitionType(this.wireValue);
  @override
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
