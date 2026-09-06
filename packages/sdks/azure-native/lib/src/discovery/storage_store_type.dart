import 'package:pulumi/pulumi.dart' as pulumi;

/// The storage store kind.
enum StorageStoreType implements pulumi.PulumiEnum<String> {
  azureStorageBlob("AzureStorageBlob"),
  azureNetAppFiles("AzureNetAppFiles");

  const StorageStoreType(this.wireValue);
  @override
  final String wireValue;

  static StorageStoreType fromValue(String value) {
    for (final item in StorageStoreType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown StorageStoreType value: $value');
  }
}
