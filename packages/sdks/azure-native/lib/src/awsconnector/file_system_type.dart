/// Property value
enum FileSystemType {
  eFS("EFS");

  const FileSystemType(this.value);
  final String value;

  static FileSystemType fromValue(String value) {
    for (final item in FileSystemType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown FileSystemType value: $value');
  }
}

