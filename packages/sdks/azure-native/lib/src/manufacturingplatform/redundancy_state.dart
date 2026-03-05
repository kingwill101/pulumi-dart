/// Zone redundancy state for resources
enum RedundancyState {
  zonal("Zonal"),
  none("None");

  const RedundancyState(this.wireValue);
  final String wireValue;

  static RedundancyState fromValue(String value) {
    for (final item in RedundancyState.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown RedundancyState value: $value');
  }
}

