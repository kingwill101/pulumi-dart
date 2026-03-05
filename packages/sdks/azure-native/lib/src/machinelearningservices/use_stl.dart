/// Configure STL Decomposition of the time-series target column.
enum UseStl {
  valueNone("None"),
  valueSeason("Season"),
  valueSeasonTrend("SeasonTrend");

  const UseStl(this.wireValue);
  final String wireValue;

  static UseStl fromValue(String value) {
    for (final item in UseStl.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown UseStl value: $value');
  }
}

