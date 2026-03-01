/// Indicates the type of data refresh option.
enum RefreshType {
  valueStatic("Static"),
  valueRefreshPeriodicallyWithFull("RefreshPeriodicallyWithFull"),
  valueRefreshPeriodicallyWithDelta("RefreshPeriodicallyWithDelta");

  const RefreshType(this.value);
  final String value;

  static RefreshType fromValue(String value) {
    for (final item in RefreshType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown RefreshType value: $value');
  }
}

