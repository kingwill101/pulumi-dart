/// Type of the data transfer.
enum TransferType {
  valueImportToAzure("ImportToAzure"),
  valueExportFromAzure("ExportFromAzure");

  const TransferType(this.wireValue);
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

