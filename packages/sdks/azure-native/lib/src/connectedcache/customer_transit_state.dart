/// Customer resource transit state.
enum CustomerTransitState {
  noTransit("NoTransit"),
  combinedTransit("CombinedTransit"),
  transitOnly("TransitOnly");

  const CustomerTransitState(this.value);
  final String value;

  static CustomerTransitState fromValue(String value) {
    for (final item in CustomerTransitState.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown CustomerTransitState value: $value');
  }
}

