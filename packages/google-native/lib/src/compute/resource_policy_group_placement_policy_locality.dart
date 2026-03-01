/// Specifies network locality
enum ResourcePolicyGroupPlacementPolicyLocality {
  bestEffort("BEST_EFFORT"),
  strict("STRICT"),
  unspecifiedLocality("UNSPECIFIED_LOCALITY");

  const ResourcePolicyGroupPlacementPolicyLocality(this.value);
  final String value;

  static ResourcePolicyGroupPlacementPolicyLocality fromValue(String value) {
    for (final item in ResourcePolicyGroupPlacementPolicyLocality.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
      'Unknown ResourcePolicyGroupPlacementPolicyLocality value: $value',
    );
  }
}
