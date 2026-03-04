/// format for the workspace connection value
enum ValueFormat {
  valueJSON("JSON");

  const ValueFormat(this.wireValue);
  final String wireValue;

  static ValueFormat fromValue(String value) {
    for (final item in ValueFormat.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ValueFormat value: $value');
  }
}
