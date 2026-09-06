import 'package:pulumi/pulumi.dart' as pulumi;

/// Specifies the storage account type to be used to store the image. This property is not updatable.
enum StorageAccountType implements pulumi.PulumiEnum<String> {
  standardLRS("Standard_LRS"),
  standardZRS("Standard_ZRS"),
  premiumLRS("Premium_LRS"),
  premiumV2LRS("PremiumV2_LRS");

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
