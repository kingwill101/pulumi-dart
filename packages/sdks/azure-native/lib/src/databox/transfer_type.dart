import 'package:pulumi/pulumi.dart' as pulumi;

/// Type of the data transfer.
enum TransferType implements pulumi.PulumiEnum<String> {
  valueImportToAzure("ImportToAzure"),
  valueExportFromAzure("ExportFromAzure");

  const TransferType(this.wireValue);
  @override
  final String wireValue;

  static TransferType fromValue(String value) {
    for (final item in TransferType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown TransferType value: $value');
  }
}
