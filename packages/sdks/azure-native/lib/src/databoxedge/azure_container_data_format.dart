/// Storage format used for the file represented by the share.
enum AzureContainerDataFormat {
  valueBlockBlob("BlockBlob"),
  valuePageBlob("PageBlob"),
  valueAzureFile("AzureFile");

  const AzureContainerDataFormat(this.wireValue);
  final String wireValue;

  static AzureContainerDataFormat fromValue(String value) {
    for (final item in AzureContainerDataFormat.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AzureContainerDataFormat value: $value');
  }
}

