import 'package:pulumi/pulumi.dart' as pulumi;

/// Indicates whether public IP addresses can be assigned to virtual machines on this subnet (i.e. Allow, Deny).
enum UsagePermissionType implements pulumi.PulumiEnum<String> {
  default_("Default"),
  deny("Deny"),
  allow("Allow");

  const UsagePermissionType(this.wireValue);
  @override
  final String wireValue;

  static UsagePermissionType fromValue(String value) {
    for (final item in UsagePermissionType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown UsagePermissionType value: $value');
  }
}
