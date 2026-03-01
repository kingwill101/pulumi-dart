/// Property value
enum PlatformType {
  linux("Linux"),
  macOS("MacOS"),
  windows("Windows");

  const PlatformType(this.value);
  final String value;

  static PlatformType fromValue(String value) {
    for (final item in PlatformType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown PlatformType value: $value');
  }
}

