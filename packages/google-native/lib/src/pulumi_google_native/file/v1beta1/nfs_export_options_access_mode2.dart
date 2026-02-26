/// Either READ_ONLY, for allowing only read requests on the exported directory, or READ_WRITE, for allowing both read and write requests. The default is READ_WRITE.
enum NfsExportOptionsAccessMode2 {
  accessModeUnspecified("ACCESS_MODE_UNSPECIFIED"),
  readOnly("READ_ONLY"),
  readWrite("READ_WRITE");

  const NfsExportOptionsAccessMode2(this.value);
  final String value;

  static NfsExportOptionsAccessMode2 fromValue(String value) {
    for (final item in NfsExportOptionsAccessMode2.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown NfsExportOptionsAccessMode2 value: $value');
  }
}
