import 'package:pulumi/pulumi.dart' as pulumi;

/// Destination of the view data. Currently only CSV format is supported.
enum FileFormat implements pulumi.PulumiEnum<String> {
  valueCsv("Csv");

  const FileFormat(this.wireValue);
  @override
  final String wireValue;

  static FileFormat fromValue(String value) {
    for (final item in FileFormat.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown FileFormat value: $value');
  }
}
