/// format for the workspace connection value
enum ValueFormat {
  valueJSON("JSON");

  const ValueFormat(this.value);
  final String value;

  static ValueFormat fromValue(String value) {
    for (final item in ValueFormat.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ValueFormat value: $value');
  }
}

