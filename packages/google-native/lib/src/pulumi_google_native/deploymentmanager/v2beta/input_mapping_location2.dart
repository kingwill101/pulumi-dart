/// The location where this mapping applies.
enum InputMappingLocation2 {
  unknown("UNKNOWN"),
  path("PATH"),
  query("QUERY"),
  body("BODY"),
  header("HEADER");

  const InputMappingLocation2(this.value);
  final String value;

  static InputMappingLocation2 fromValue(String value) {
    for (final item in InputMappingLocation2.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown InputMappingLocation2 value: $value');
  }
}
