/// Type of the data transfer.
enum TransferType {
  valueImportToAzure("ImportToAzure"),
  valueExportFromAzure("ExportFromAzure");

  const TransferType(this.value);
  final String value;

  static TransferType fromValue(String value) {
    for (final item in TransferType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown TransferType value: $value');
  }
}

