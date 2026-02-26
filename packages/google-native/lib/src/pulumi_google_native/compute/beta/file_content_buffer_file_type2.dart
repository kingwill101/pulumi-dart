/// The file type of source file.
enum FileContentBufferFileType2 {
  bin("BIN"),
  undefined("UNDEFINED"),
  x509("X509");

  const FileContentBufferFileType2(this.value);
  final String value;

  static FileContentBufferFileType2 fromValue(String value) {
    for (final item in FileContentBufferFileType2.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown FileContentBufferFileType2 value: $value');
  }
}
