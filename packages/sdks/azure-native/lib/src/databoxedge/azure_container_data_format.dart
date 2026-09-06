import 'package:pulumi/pulumi.dart' as pulumi;

/// Storage format used for the file represented by the share.
enum AzureContainerDataFormat implements pulumi.PulumiEnum<String> {
  valueBlockBlob("BlockBlob"),
  valuePageBlob("PageBlob"),
  valueAzureFile("AzureFile");

  const AzureContainerDataFormat(this.wireValue);
  @override
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
