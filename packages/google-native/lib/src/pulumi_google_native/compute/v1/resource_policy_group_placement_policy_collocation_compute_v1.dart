/// Specifies network collocation
enum ResourcePolicyGroupPlacementPolicyCollocationComputeV1 {
  collocated("COLLOCATED"),
  unspecifiedCollocation("UNSPECIFIED_COLLOCATION");

  const ResourcePolicyGroupPlacementPolicyCollocationComputeV1(this.value);
  final String value;

  static ResourcePolicyGroupPlacementPolicyCollocationComputeV1 fromValue(
      String value) {
    for (final item
        in ResourcePolicyGroupPlacementPolicyCollocationComputeV1.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
        'Unknown ResourcePolicyGroupPlacementPolicyCollocationComputeV1 value: $value');
  }
}
