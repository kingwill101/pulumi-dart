/// This is deprecated and has no effect. Do not use.
enum AuthorizationLoggingOptionsPermissionType3 {
  adminRead("ADMIN_READ"),
  adminWrite("ADMIN_WRITE"),
  dataRead("DATA_READ"),
  dataWrite("DATA_WRITE"),
  permissionTypeUnspecified("PERMISSION_TYPE_UNSPECIFIED");

  const AuthorizationLoggingOptionsPermissionType3(this.value);
  final String value;

  static AuthorizationLoggingOptionsPermissionType3 fromValue(String value) {
    for (final item in AuthorizationLoggingOptionsPermissionType3.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
        'Unknown AuthorizationLoggingOptionsPermissionType3 value: $value');
  }
}
