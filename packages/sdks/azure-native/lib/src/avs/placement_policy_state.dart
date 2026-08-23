/// Whether the placement policy is enabled or disabled
enum PlacementPolicyState {
  enabled("Enabled"),
  disabled("Disabled");

  const PlacementPolicyState(this.wireValue);
  final String wireValue;

  static PlacementPolicyState fromValue(String value) {
    for (final item in PlacementPolicyState.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown PlacementPolicyState value: $value');
  }
}
