import 'package:pulumi/pulumi.dart' as pulumi;

/// Placement Policy type
enum PlacementPolicyType implements pulumi.PulumiEnum<String> {
  vmVm("VmVm"),
  vmHost("VmHost");

  const PlacementPolicyType(this.wireValue);
  @override
  final String wireValue;

  static PlacementPolicyType fromValue(String value) {
    for (final item in PlacementPolicyType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown PlacementPolicyType value: $value');
  }
}
