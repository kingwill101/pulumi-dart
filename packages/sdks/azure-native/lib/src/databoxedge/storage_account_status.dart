/// Current status of the storage account
enum StorageAccountStatus {
  valueOK("OK"),
  valueOffline("Offline"),
  valueUnknown("Unknown"),
  valueUpdating("Updating"),
  valueNeedsAttention("NeedsAttention");

  const StorageAccountStatus(this.value);
  final String value;

  static StorageAccountStatus fromValue(String value) {
    for (final item in StorageAccountStatus.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown StorageAccountStatus value: $value');
  }
}

