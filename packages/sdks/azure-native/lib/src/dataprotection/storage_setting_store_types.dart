/// Gets or sets the type of the datastore.
enum StorageSettingStoreTypes {
  valueArchiveStore("ArchiveStore"),
  valueOperationalStore("OperationalStore"),
  valueVaultStore("VaultStore");

  const StorageSettingStoreTypes(this.wireValue);
  final String wireValue;

  static StorageSettingStoreTypes fromValue(String value) {
    for (final item in StorageSettingStoreTypes.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown StorageSettingStoreTypes value: $value');
  }
}
