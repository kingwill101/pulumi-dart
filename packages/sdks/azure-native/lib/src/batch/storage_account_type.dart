import 'package:pulumi/pulumi.dart' as pulumi;

/// The storage account type for use in creating data disks or OS disk.
enum StorageAccountType implements pulumi.PulumiEnum<String> {
  standardLRS("Standard_LRS"),
  premiumLRS("Premium_LRS"),
  standardSSDLRS("StandardSSD_LRS");

  const StorageAccountType(this.wireValue);
  @override
  final String wireValue;

  static StorageAccountType fromValue(String value) {
    for (final item in StorageAccountType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown StorageAccountType value: $value');
  }
}
