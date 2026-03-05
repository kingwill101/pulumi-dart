/// Describes if it is in detection mode or prevention mode at policy level.
enum PolicyMode {
  valuePrevention("Prevention"),
  valueDetection("Detection");

  const PolicyMode(this.wireValue);
  final String wireValue;

  static PolicyMode fromValue(String value) {
    for (final item in PolicyMode.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown PolicyMode value: $value');
  }
}

