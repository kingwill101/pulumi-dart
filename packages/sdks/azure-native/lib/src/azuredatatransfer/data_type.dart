import 'package:pulumi/pulumi.dart' as pulumi;

/// Transfer Storage Blobs or Tables
enum DataType implements pulumi.PulumiEnum<String> {
  valueBlob("Blob"),
  valueTable("Table");

  const DataType(this.wireValue);
  @override
  final String wireValue;

  static DataType fromValue(String value) {
    for (final item in DataType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown DataType value: $value');
  }
}
