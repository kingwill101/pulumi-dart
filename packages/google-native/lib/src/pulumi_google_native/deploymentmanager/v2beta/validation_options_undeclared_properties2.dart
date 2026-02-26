/// Specify what to do with extra properties when executing a request.
enum ValidationOptionsUndeclaredProperties2 {
  unknown("UNKNOWN"),
  include("INCLUDE"),
  ignore("IGNORE"),
  includeWithWarnings("INCLUDE_WITH_WARNINGS"),
  ignoreWithWarnings("IGNORE_WITH_WARNINGS"),
  fail("FAIL");

  const ValidationOptionsUndeclaredProperties2(this.value);
  final String value;

  static ValidationOptionsUndeclaredProperties2 fromValue(String value) {
    for (final item in ValidationOptionsUndeclaredProperties2.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
        'Unknown ValidationOptionsUndeclaredProperties2 value: $value');
  }
}
