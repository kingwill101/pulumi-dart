/// Property value
enum ArchitectureValues {
  arm64("arm64"),
  arm64Mac("arm64_mac"),
  i386("i386"),
  x8664("x86_64"),
  x8664Mac("x86_64_mac");

  const ArchitectureValues(this.value);
  final String value;

  static ArchitectureValues fromValue(String value) {
    for (final item in ArchitectureValues.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ArchitectureValues value: $value');
  }
}

