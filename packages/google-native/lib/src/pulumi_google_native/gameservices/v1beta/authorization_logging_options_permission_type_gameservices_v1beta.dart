/// The type of the permission that was checked.
enum AuthorizationLoggingOptionsPermissionTypeGameservicesV1beta {
  permissionTypeUnspecified("PERMISSION_TYPE_UNSPECIFIED"),
  adminRead("ADMIN_READ"),
  adminWrite("ADMIN_WRITE"),
  dataRead("DATA_READ"),
  dataWrite("DATA_WRITE");

  const AuthorizationLoggingOptionsPermissionTypeGameservicesV1beta(this.value);
  final String value;

  static AuthorizationLoggingOptionsPermissionTypeGameservicesV1beta fromValue(
      String value) {
    for (final item
        in AuthorizationLoggingOptionsPermissionTypeGameservicesV1beta.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
        'Unknown AuthorizationLoggingOptionsPermissionTypeGameservicesV1beta value: $value');
  }
}
