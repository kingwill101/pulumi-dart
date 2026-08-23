/// Property value
enum PlatformType {
  linux("Linux"),
  macOS("MacOS"),
  windows("Windows");

  const PlatformType(this.wireValue);
  final String wireValue;

  static PlatformType fromValue(String value) {
    for (final item in PlatformType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown PlatformType value: $value');
  }
}
