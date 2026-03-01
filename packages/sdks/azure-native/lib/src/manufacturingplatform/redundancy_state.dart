/// Zone redundancy state for resources
enum RedundancyState {
  zonal("Zonal"),
  none("None");

  const RedundancyState(this.value);
  final String value;

  static RedundancyState fromValue(String value) {
    for (final item in RedundancyState.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown RedundancyState value: $value');
  }
}

