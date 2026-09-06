import 'package:pulumi/pulumi.dart' as pulumi;

/// File output type
enum OutputType implements pulumi.PulumiEnum<String> {
  valueCsv("Csv"),
  valueParquet("Parquet");

  const OutputType(this.wireValue);
  @override
  final String wireValue;

  static OutputType fromValue(String value) {
    for (final item in OutputType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown OutputType value: $value');
  }
}
