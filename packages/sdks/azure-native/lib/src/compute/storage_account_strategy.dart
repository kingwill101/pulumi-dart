import 'package:pulumi/pulumi.dart' as pulumi;

/// Specifies the strategy to be used when selecting the storage account type. Cannot be specified along with storageAccountType, but can be overridden per region by specifying targetRegions[].storageAccountType. This property is not updatable.
enum StorageAccountStrategy implements pulumi.PulumiEnum<String> {
  preferStandardZRS("PreferStandard_ZRS"),
  defaultStandardLRS("DefaultStandard_LRS");

  const StorageAccountStrategy(this.wireValue);
  @override
  final String wireValue;

  static StorageAccountStrategy fromValue(String value) {
    for (final item in StorageAccountStrategy.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown StorageAccountStrategy value: $value');
  }
}
