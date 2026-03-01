/// Gets or sets the type of the datastore.
enum StorageSettingStoreTypes {
  valueArchiveStore("ArchiveStore"),
  valueOperationalStore("OperationalStore"),
  valueVaultStore("VaultStore");

  const StorageSettingStoreTypes(this.value);
  final String value;

  static StorageSettingStoreTypes fromValue(String value) {
    for (final item in StorageSettingStoreTypes.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown StorageSettingStoreTypes value: $value');
  }
}

