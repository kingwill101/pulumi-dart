/// Specifies network collocation
enum ResourcePolicyGroupPlacementPolicyCollocation2 {
  collocated("COLLOCATED"),
  unspecifiedCollocation("UNSPECIFIED_COLLOCATION");

  const ResourcePolicyGroupPlacementPolicyCollocation2(this.value);
  final String value;

  static ResourcePolicyGroupPlacementPolicyCollocation2 fromValue(
      String value) {
    for (final item in ResourcePolicyGroupPlacementPolicyCollocation2.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
        'Unknown ResourcePolicyGroupPlacementPolicyCollocation2 value: $value');
  }
}
