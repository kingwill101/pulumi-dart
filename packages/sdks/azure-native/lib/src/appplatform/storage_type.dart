import 'package:pulumi/pulumi.dart' as pulumi;

/// The type of the storage.
enum StorageType implements pulumi.PulumiEnum<String> {
  valueStorageAccount("StorageAccount");

  const StorageType(this.wireValue);
  @override
  final String wireValue;

  static StorageType fromValue(String value) {
    for (final item in StorageType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown StorageType value: $value');
  }
}
