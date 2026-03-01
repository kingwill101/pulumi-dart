/// Export Policy for the BMP Configuration.
enum BmpExportPolicy {
  prePolicy("Pre-Policy"),
  postPolicy("Post-Policy"),
  all("All");

  const BmpExportPolicy(this.value);
  final String value;

  static BmpExportPolicy fromValue(String value) {
    for (final item in BmpExportPolicy.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown BmpExportPolicy value: $value');
  }
}

