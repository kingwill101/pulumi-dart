/// The directory type.
enum DirectoryType {
  valueActiveDirectory("ActiveDirectory");

  const DirectoryType(this.value);
  final String value;

  static DirectoryType fromValue(String value) {
    for (final item in DirectoryType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown DirectoryType value: $value');
  }
}

