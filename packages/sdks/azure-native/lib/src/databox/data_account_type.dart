import 'package:pulumi/pulumi.dart' as pulumi;

/// Type of the account of data.
enum DataAccountType implements pulumi.PulumiEnum<String> {
  valueStorageAccount("StorageAccount"),
  valueManagedDisk("ManagedDisk");

  const DataAccountType(this.wireValue);
  @override
  final String wireValue;

  static DataAccountType fromValue(String value) {
    for (final item in DataAccountType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown DataAccountType value: $value');
  }
}
