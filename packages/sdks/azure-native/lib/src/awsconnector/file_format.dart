import 'package:pulumi/pulumi.dart' as pulumi;

/// Property fileFormat
enum FileFormat implements pulumi.PulumiEnum<String> {
  parquet("parquet"),
  plainText("plain-text");

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
