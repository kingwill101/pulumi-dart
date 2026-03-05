/// Current status of the storage account
enum StorageAccountStatus {
  valueOK("OK"),
  valueOffline("Offline"),
  valueUnknown("Unknown"),
  valueUpdating("Updating"),
  valueNeedsAttention("NeedsAttention");

  const StorageAccountStatus(this.wireValue);
  final String wireValue;

  static StorageAccountStatus fromValue(String value) {
    for (final item in StorageAccountStatus.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown StorageAccountStatus value: $value');
  }
}

