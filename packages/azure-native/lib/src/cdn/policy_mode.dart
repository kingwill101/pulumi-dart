/// Describes if it is in detection mode or prevention mode at policy level.
enum PolicyMode {
  prevention("Prevention"),
  detection("Detection");

  const PolicyMode(this.value);
  final String value;

  static PolicyMode fromValue(String value) {
    for (final item in PolicyMode.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown PolicyMode value: $value');
  }
}

