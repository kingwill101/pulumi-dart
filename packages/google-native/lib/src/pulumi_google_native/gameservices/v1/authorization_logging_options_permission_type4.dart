/// The type of the permission that was checked.
enum AuthorizationLoggingOptionsPermissionType4 {
  permissionTypeUnspecified("PERMISSION_TYPE_UNSPECIFIED"),
  adminRead("ADMIN_READ"),
  adminWrite("ADMIN_WRITE"),
  dataRead("DATA_READ"),
  dataWrite("DATA_WRITE");

  const AuthorizationLoggingOptionsPermissionType4(this.value);
  final String value;

  static AuthorizationLoggingOptionsPermissionType4 fromValue(String value) {
    for (final item in AuthorizationLoggingOptionsPermissionType4.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
        'Unknown AuthorizationLoggingOptionsPermissionType4 value: $value');
  }
}
