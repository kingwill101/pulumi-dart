/// The file type of source file.
enum FileContentBufferFileType3 {
  bin("BIN"),
  undefined("UNDEFINED"),
  x509("X509");

  const FileContentBufferFileType3(this.value);
  final String value;

  static FileContentBufferFileType3 fromValue(String value) {
    for (final item in FileContentBufferFileType3.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown FileContentBufferFileType3 value: $value');
  }
}
