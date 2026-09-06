import 'package:pulumi/pulumi.dart' as pulumi;

/// Mode of Authentication.
enum DataLakeStorageAuthMethod implements pulumi.PulumiEnum<String> {
  systemAssignedManagedIdentity("SystemAssignedManagedIdentity"),
  userAssignedManagedIdentity("UserAssignedManagedIdentity"),
  accessToken("AccessToken");

  const DataLakeStorageAuthMethod(this.wireValue);
  @override
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
