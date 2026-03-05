/// Customer resource transit state.
enum CustomerTransitState {
  noTransit("NoTransit"),
  combinedTransit("CombinedTransit"),
  transitOnly("TransitOnly");

  const CustomerTransitState(this.wireValue);
  final String wireValue;

  static CustomerTransitState fromValue(String value) {
    for (final item in CustomerTransitState.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown CustomerTransitState value: $value');
  }
}

