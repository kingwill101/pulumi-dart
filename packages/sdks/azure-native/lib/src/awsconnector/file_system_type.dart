/// Property value
enum FileSystemType {
  eFS("EFS");

  const FileSystemType(this.wireValue);
  final String wireValue;

  static FileSystemType fromValue(String value) {
    for (final item in FileSystemType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown FileSystemType value: $value');
  }
}

