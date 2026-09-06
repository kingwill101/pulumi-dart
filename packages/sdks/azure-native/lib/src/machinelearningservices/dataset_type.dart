import 'package:pulumi/pulumi.dart' as pulumi;

/// Specifies dataset type.
enum DatasetType implements pulumi.PulumiEnum<String> {
  valueTabular("tabular"),
  valueFile("file");

  const DatasetType(this.wireValue);
  @override
  final String wireValue;

  static DatasetType fromValue(String value) {
    for (final item in DatasetType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown DatasetType value: $value');
  }
}
