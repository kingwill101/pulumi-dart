/// Host OS supported by the Kubernetes role.
enum PlatformType {
  valueWindows("Windows"),
  valueLinux("Linux");

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

