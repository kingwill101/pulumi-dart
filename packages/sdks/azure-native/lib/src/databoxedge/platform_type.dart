/// Host OS supported by the Kubernetes role.
enum PlatformType {
  valueWindows("Windows"),
  valueLinux("Linux");

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

