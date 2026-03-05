/// The authentication mode which the Batch service will use to manage the auto-storage account.
enum AutoStorageAuthenticationMode {
  storageKeys("StorageKeys"),
  batchAccountManagedIdentity("BatchAccountManagedIdentity");

  const AutoStorageAuthenticationMode(this.wireValue);
  final String wireValue;

  static AutoStorageAuthenticationMode fromValue(String value) {
    for (final item in AutoStorageAuthenticationMode.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AutoStorageAuthenticationMode value: $value');
  }
}

