/// Treatment of URL query terms when forming the cache key.
enum FrontDoorQuery {
  valueStripNone("StripNone"),
  valueStripAll("StripAll"),
  valueStripOnly("StripOnly"),
  valueStripAllExcept("StripAllExcept");

  const FrontDoorQuery(this.value);
  final String value;

  static FrontDoorQuery fromValue(String value) {
    for (final item in FrontDoorQuery.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown FrontDoorQuery value: $value');
  }
}

