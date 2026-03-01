/// Placement Policy type
enum PlacementPolicyType {
  vmVm("VmVm"),
  vmHost("VmHost");

  const PlacementPolicyType(this.value);
  final String value;

  static PlacementPolicyType fromValue(String value) {
    for (final item in PlacementPolicyType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown PlacementPolicyType value: $value');
  }
}

