/// The peering state.
enum ExpressRoutePeeringState {
  valueDisabled("Disabled"),
  valueEnabled("Enabled");

  const ExpressRoutePeeringState(this.value);
  final String value;

  static ExpressRoutePeeringState fromValue(String value) {
    for (final item in ExpressRoutePeeringState.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ExpressRoutePeeringState value: $value');
  }
}

