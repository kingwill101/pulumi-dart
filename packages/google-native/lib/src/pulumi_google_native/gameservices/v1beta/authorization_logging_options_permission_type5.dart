/// The type of the permission that was checked.
enum AuthorizationLoggingOptionsPermissionType5 {
  permissionTypeUnspecified("PERMISSION_TYPE_UNSPECIFIED"),
  adminRead("ADMIN_READ"),
  adminWrite("ADMIN_WRITE"),
  dataRead("DATA_READ"),
  dataWrite("DATA_WRITE");

  const AuthorizationLoggingOptionsPermissionType5(this.value);
  final String value;

  static AuthorizationLoggingOptionsPermissionType5 fromValue(String value) {
    for (final item in AuthorizationLoggingOptionsPermissionType5.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
        'Unknown AuthorizationLoggingOptionsPermissionType5 value: $value');
  }
}
