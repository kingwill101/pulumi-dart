/// Type of access to be allowed for the client.
enum ClientPermissionType {
  valueNoAccess("NoAccess"),
  valueReadOnly("ReadOnly"),
  valueReadWrite("ReadWrite");

  const ClientPermissionType(this.value);
  final String value;

  static ClientPermissionType fromValue(String value) {
    for (final item in ClientPermissionType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ClientPermissionType value: $value');
  }
}

