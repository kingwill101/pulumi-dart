/// The file type of source file.
enum FileContentBufferFileType {
  bin("BIN"),
  undefined("UNDEFINED"),
  x509("X509");

  const FileContentBufferFileType(this.value);
  final String value;

  static FileContentBufferFileType fromValue(String value) {
    for (final item in FileContentBufferFileType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown FileContentBufferFileType value: $value');
  }
}
