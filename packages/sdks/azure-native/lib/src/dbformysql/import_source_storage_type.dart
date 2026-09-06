import 'package:pulumi/pulumi.dart' as pulumi;

/// Storage type of import source.
enum ImportSourceStorageType implements pulumi.PulumiEnum<String> {
  valueAzureBlob("AzureBlob");

  const ImportSourceStorageType(this.wireValue);
  @override
  final String wireValue;

  static ImportSourceStorageType fromValue(String value) {
    for (final item in ImportSourceStorageType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ImportSourceStorageType value: $value');
  }
}
