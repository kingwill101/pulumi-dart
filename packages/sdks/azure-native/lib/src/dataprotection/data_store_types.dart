/// type of datastore; Operational/Vault/Archive
enum DataStoreTypes {
  valueOperationalStore("OperationalStore"),
  valueVaultStore("VaultStore"),
  valueArchiveStore("ArchiveStore");

  const DataStoreTypes(this.wireValue);
  final String wireValue;

  static DataStoreTypes fromValue(String value) {
    for (final item in DataStoreTypes.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown DataStoreTypes value: $value');
  }
}
