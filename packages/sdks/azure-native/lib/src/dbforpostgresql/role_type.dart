import 'package:pulumi/pulumi.dart' as pulumi;

enum RoleType implements pulumi.PulumiEnum<String> {
  user("user"),
  admin("admin");

  const RoleType(this.wireValue);
  @override
  final String wireValue;

  static RoleType fromValue(String value) {
    for (final item in RoleType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown RoleType value: $value');
  }
}
