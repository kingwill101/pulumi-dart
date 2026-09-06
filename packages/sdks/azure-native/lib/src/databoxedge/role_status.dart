import 'package:pulumi/pulumi.dart' as pulumi;

/// Role status.
enum RoleStatus implements pulumi.PulumiEnum<String> {
  valueEnabled("Enabled"),
  valueDisabled("Disabled");

  const RoleStatus(this.wireValue);
  @override
  final String wireValue;

  static RoleStatus fromValue(String value) {
    for (final item in RoleStatus.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown RoleStatus value: $value');
  }
}
