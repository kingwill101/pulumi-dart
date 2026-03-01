/// The event hub messages compression type
enum Compression {
  valueNone("None"),
  valueGZip("GZip");

  const Compression(this.value);
  final String value;

  static Compression fromValue(String value) {
    for (final item in Compression.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown Compression value: $value');
  }
}

