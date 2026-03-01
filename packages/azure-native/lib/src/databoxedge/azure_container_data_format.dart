/// Storage format used for the file represented by the share.
enum AzureContainerDataFormat {
  valueBlockBlob("BlockBlob"),
  valuePageBlob("PageBlob"),
  valueAzureFile("AzureFile");

  const AzureContainerDataFormat(this.value);
  final String value;

  static AzureContainerDataFormat fromValue(String value) {
    for (final item in AzureContainerDataFormat.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AzureContainerDataFormat value: $value');
  }
}

