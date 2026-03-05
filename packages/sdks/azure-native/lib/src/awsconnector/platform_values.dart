/// Property value
enum PlatformValues {
  windows("Windows");

  const PlatformValues(this.wireValue);
  final String wireValue;

  static PlatformValues fromValue(String value) {
    for (final item in PlatformValues.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown PlatformValues value: $value');
  }
}

