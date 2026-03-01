/// How to use the ranking to select time series that pass through the filter.
enum PickTimeSeriesFilterDirection {
  directionUnspecified("DIRECTION_UNSPECIFIED"),
  top("TOP"),
  bottom("BOTTOM");

  const PickTimeSeriesFilterDirection(this.value);
  final String value;

  static PickTimeSeriesFilterDirection fromValue(String value) {
    for (final item in PickTimeSeriesFilterDirection.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown PickTimeSeriesFilterDirection value: $value');
  }
}
