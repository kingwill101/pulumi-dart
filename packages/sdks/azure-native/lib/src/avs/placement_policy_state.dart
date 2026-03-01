/// Whether the placement policy is enabled or disabled
enum PlacementPolicyState {
  enabled("Enabled"),
  disabled("Disabled");

  const PlacementPolicyState(this.value);
  final String value;

  static PlacementPolicyState fromValue(String value) {
    for (final item in PlacementPolicyState.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown PlacementPolicyState value: $value');
  }
}

