/// Mount permissions.
enum AllowedClientMountPermissions {
  mountPermissionsUnspecified("MOUNT_PERMISSIONS_UNSPECIFIED"),
  read("READ"),
  readWrite("READ_WRITE");

  const AllowedClientMountPermissions(this.value);
  final String value;

  static AllowedClientMountPermissions fromValue(String value) {
    for (final item in AllowedClientMountPermissions.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AllowedClientMountPermissions value: $value');
  }
}
