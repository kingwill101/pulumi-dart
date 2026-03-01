/// Mode of Authentication.
enum DataLakeStorageAuthMethod {
  systemAssignedManagedIdentity("SystemAssignedManagedIdentity"),
  userAssignedManagedIdentity("UserAssignedManagedIdentity"),
  accessToken("AccessToken");

  const DataLakeStorageAuthMethod(this.value);
  final String value;

  static DataLakeStorageAuthMethod fromValue(String value) {
    for (final item in DataLakeStorageAuthMethod.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown DataLakeStorageAuthMethod value: $value');
  }
}

