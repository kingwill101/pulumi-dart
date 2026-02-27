/// The type of the permission that was checked.
enum AuthorizationLoggingOptionsPermissionTypeGameservicesV1 {
  permissionTypeUnspecified("PERMISSION_TYPE_UNSPECIFIED"),
  adminRead("ADMIN_READ"),
  adminWrite("ADMIN_WRITE"),
  dataRead("DATA_READ"),
  dataWrite("DATA_WRITE");

  const AuthorizationLoggingOptionsPermissionTypeGameservicesV1(this.value);
  final String value;

  static AuthorizationLoggingOptionsPermissionTypeGameservicesV1 fromValue(
      String value) {
    for (final item
        in AuthorizationLoggingOptionsPermissionTypeGameservicesV1.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
        'Unknown AuthorizationLoggingOptionsPermissionTypeGameservicesV1 value: $value');
  }
}
