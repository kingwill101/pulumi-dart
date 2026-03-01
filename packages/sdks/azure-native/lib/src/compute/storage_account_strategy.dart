/// Specifies the strategy to be used when selecting the storage account type. Cannot be specified along with storageAccountType, but can be overridden per region by specifying targetRegions[].storageAccountType. This property is not updatable.
enum StorageAccountStrategy {
  preferStandardZRS("PreferStandard_ZRS"),
  defaultStandardLRS("DefaultStandard_LRS");

  const StorageAccountStrategy(this.value);
  final String value;

  static StorageAccountStrategy fromValue(String value) {
    for (final item in StorageAccountStrategy.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown StorageAccountStrategy value: $value');
  }
}

