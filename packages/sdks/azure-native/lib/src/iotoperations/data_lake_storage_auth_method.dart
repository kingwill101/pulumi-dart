/// Mode of Authentication.
enum DataLakeStorageAuthMethod {
  systemAssignedManagedIdentity("SystemAssignedManagedIdentity"),
  userAssignedManagedIdentity("UserAssignedManagedIdentity"),
  accessToken("AccessToken");

  const DataLakeStorageAuthMethod(this.wireValue);
  final String wireValue;

  static DataLakeStorageAuthMethod fromValue(String value) {
    for (final item in DataLakeStorageAuthMethod.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown DataLakeStorageAuthMethod value: $value');
  }
}

