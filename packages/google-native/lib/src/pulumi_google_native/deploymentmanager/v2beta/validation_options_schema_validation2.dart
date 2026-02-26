/// Customize how deployment manager will validate the resource against schema errors.
enum ValidationOptionsSchemaValidation2 {
  unknown("UNKNOWN"),
  ignore("IGNORE"),
  ignoreWithWarnings("IGNORE_WITH_WARNINGS"),
  fail("FAIL");

  const ValidationOptionsSchemaValidation2(this.value);
  final String value;

  static ValidationOptionsSchemaValidation2 fromValue(String value) {
    for (final item in ValidationOptionsSchemaValidation2.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
        'Unknown ValidationOptionsSchemaValidation2 value: $value');
  }
}
