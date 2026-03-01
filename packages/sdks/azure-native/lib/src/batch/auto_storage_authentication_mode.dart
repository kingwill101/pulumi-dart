/// The authentication mode which the Batch service will use to manage the auto-storage account.
enum AutoStorageAuthenticationMode {
  storageKeys("StorageKeys"),
  batchAccountManagedIdentity("BatchAccountManagedIdentity");

  const AutoStorageAuthenticationMode(this.value);
  final String value;

  static AutoStorageAuthenticationMode fromValue(String value) {
    for (final item in AutoStorageAuthenticationMode.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AutoStorageAuthenticationMode value: $value');
  }
}

