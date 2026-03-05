/// The directory type.
enum DirectoryType {
  valueActiveDirectory("ActiveDirectory");

  const DirectoryType(this.wireValue);
  final String wireValue;

  static DirectoryType fromValue(String value) {
    for (final item in DirectoryType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown DirectoryType value: $value');
  }
}

