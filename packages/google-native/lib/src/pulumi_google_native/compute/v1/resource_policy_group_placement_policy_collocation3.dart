/// Specifies network collocation
enum ResourcePolicyGroupPlacementPolicyCollocation3 {
  collocated("COLLOCATED"),
  unspecifiedCollocation("UNSPECIFIED_COLLOCATION");

  const ResourcePolicyGroupPlacementPolicyCollocation3(this.value);
  final String value;

  static ResourcePolicyGroupPlacementPolicyCollocation3 fromValue(
      String value) {
    for (final item in ResourcePolicyGroupPlacementPolicyCollocation3.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
        'Unknown ResourcePolicyGroupPlacementPolicyCollocation3 value: $value');
  }
}
