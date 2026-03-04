/// Export Policy for the BMP Configuration.
enum BmpExportPolicy {
  prePolicy("Pre-Policy"),
  postPolicy("Post-Policy"),
  all("All");

  const BmpExportPolicy(this.wireValue);
  final String wireValue;

  static BmpExportPolicy fromValue(String value) {
    for (final item in BmpExportPolicy.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown BmpExportPolicy value: $value');
  }
}
