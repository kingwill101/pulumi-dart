/// Scope specifies the availability domain to which the VMs should be spread.
enum ResourcePolicyGroupPlacementPolicyScope {
  host("HOST"),
  unspecifiedScope("UNSPECIFIED_SCOPE");

  const ResourcePolicyGroupPlacementPolicyScope(this.value);
  final String value;

  static ResourcePolicyGroupPlacementPolicyScope fromValue(String value) {
    for (final item in ResourcePolicyGroupPlacementPolicyScope.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
        'Unknown ResourcePolicyGroupPlacementPolicyScope value: $value');
  }
}
