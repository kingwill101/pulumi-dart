/// The data boundary.
enum DataBoundary {
  notDefined("NotDefined"),
  global("Global"),
  eU("EU"),
  uS("US");

  const DataBoundary(this.value);
  final String value;

  static DataBoundary fromValue(String value) {
    for (final item in DataBoundary.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown DataBoundary value: $value');
  }
}

