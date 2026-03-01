/// Specifies network collocation
enum ResourcePolicyGroupPlacementPolicyCollocation {
  clustered("CLUSTERED"),
  collocated("COLLOCATED"),
  unspecifiedCollocation("UNSPECIFIED_COLLOCATION");

  const ResourcePolicyGroupPlacementPolicyCollocation(this.value);
  final String value;

  static ResourcePolicyGroupPlacementPolicyCollocation fromValue(String value) {
    for (final item in ResourcePolicyGroupPlacementPolicyCollocation.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
      'Unknown ResourcePolicyGroupPlacementPolicyCollocation value: $value',
    );
  }
}
