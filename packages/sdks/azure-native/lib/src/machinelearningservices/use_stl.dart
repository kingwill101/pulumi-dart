/// Configure STL Decomposition of the time-series target column.
enum UseStl {
  valueNone("None"),
  valueSeason("Season"),
  valueSeasonTrend("SeasonTrend");

  const UseStl(this.value);
  final String value;

  static UseStl fromValue(String value) {
    for (final item in UseStl.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown UseStl value: $value');
  }
}

