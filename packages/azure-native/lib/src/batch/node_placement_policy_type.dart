/// Allocation policy used by Batch Service to provision the nodes. If not specified, Batch will use the regional policy.
enum NodePlacementPolicyType {
  regional("Regional"),
  zonal("Zonal");

  const NodePlacementPolicyType(this.value);
  final String value;

  static NodePlacementPolicyType fromValue(String value) {
    for (final item in NodePlacementPolicyType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown NodePlacementPolicyType value: $value');
  }
}

