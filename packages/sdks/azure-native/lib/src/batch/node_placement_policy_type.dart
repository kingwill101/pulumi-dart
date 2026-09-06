import 'package:pulumi/pulumi.dart' as pulumi;

/// Allocation policy used by Batch Service to provision the nodes. If not specified, Batch will use the regional policy.
enum NodePlacementPolicyType implements pulumi.PulumiEnum<String> {
  regional("Regional"),
  zonal("Zonal");

  const NodePlacementPolicyType(this.wireValue);
  @override
  final String wireValue;

  static NodePlacementPolicyType fromValue(String value) {
    for (final item in NodePlacementPolicyType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown NodePlacementPolicyType value: $value');
  }
}
