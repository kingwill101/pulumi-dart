/// Property to select authentication type to access the selected storage account. Available options: SystemAssignedIdentity, UserAssignedIdentity, StorageAccountConnectionString.
enum AuthenticationType {
  valueSystemAssignedIdentity("SystemAssignedIdentity"),
  valueUserAssignedIdentity("UserAssignedIdentity"),
  valueStorageAccountConnectionString("StorageAccountConnectionString");

  const AuthenticationType(this.value);
  final String value;

  static AuthenticationType fromValue(String value) {
    for (final item in AuthenticationType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AuthenticationType value: $value');
  }
}

