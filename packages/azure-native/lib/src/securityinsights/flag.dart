/// Flag indicates if this package is in preview.
enum Flag {
  valueTrue("true"),
  valueFalse("false");

  const Flag(this.value);
  final String value;

  static Flag fromValue(String value) {
    for (final item in Flag.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown Flag value: $value');
  }
}

