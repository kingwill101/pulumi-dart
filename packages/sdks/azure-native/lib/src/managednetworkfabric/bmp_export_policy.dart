import 'package:pulumi/pulumi.dart' as pulumi;

/// Export Policy for the BMP Configuration.
enum BmpExportPolicy implements pulumi.PulumiEnum<String> {
  prePolicy("Pre-Policy"),
  postPolicy("Post-Policy"),
  all("All");

  const BmpExportPolicy(this.wireValue);
  @override
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
