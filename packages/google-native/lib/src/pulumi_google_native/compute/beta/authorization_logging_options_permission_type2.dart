/// This is deprecated and has no effect. Do not use.
enum AuthorizationLoggingOptionsPermissionType2 {
  adminRead("ADMIN_READ"),
  adminWrite("ADMIN_WRITE"),
  dataRead("DATA_READ"),
  dataWrite("DATA_WRITE"),
  permissionTypeUnspecified("PERMISSION_TYPE_UNSPECIFIED");

  const AuthorizationLoggingOptionsPermissionType2(this.value);
  final String value;

  static AuthorizationLoggingOptionsPermissionType2 fromValue(String value) {
    for (final item in AuthorizationLoggingOptionsPermissionType2.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
        'Unknown AuthorizationLoggingOptionsPermissionType2 value: $value');
  }
}
