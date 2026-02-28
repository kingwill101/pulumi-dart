/// The file type of source file.
enum FileContentBufferFileTypeComputeBeta {
  bin("BIN"),
  undefined("UNDEFINED"),
  x509("X509");

  const FileContentBufferFileTypeComputeBeta(this.value);
  final String value;

  static FileContentBufferFileTypeComputeBeta fromValue(String value) {
    for (final item in FileContentBufferFileTypeComputeBeta.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown FileContentBufferFileTypeComputeBeta value: $value');
  }
}

