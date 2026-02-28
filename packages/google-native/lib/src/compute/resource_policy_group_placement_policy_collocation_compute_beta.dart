/// Specifies network collocation
enum ResourcePolicyGroupPlacementPolicyCollocationComputeBeta {
  collocated("COLLOCATED"),
  unspecifiedCollocation("UNSPECIFIED_COLLOCATION");

  const ResourcePolicyGroupPlacementPolicyCollocationComputeBeta(this.value);
  final String value;

  static ResourcePolicyGroupPlacementPolicyCollocationComputeBeta fromValue(String value) {
    for (final item in ResourcePolicyGroupPlacementPolicyCollocationComputeBeta.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ResourcePolicyGroupPlacementPolicyCollocationComputeBeta value: $value');
  }
}

