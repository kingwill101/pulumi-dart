/// Property value
enum PlatformValues {
  windows("Windows");

  const PlatformValues(this.value);
  final String value;

  static PlatformValues fromValue(String value) {
    for (final item in PlatformValues.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown PlatformValues value: $value');
  }
}

