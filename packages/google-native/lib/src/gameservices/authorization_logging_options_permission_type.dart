/// The type of the permission that was checked.
enum AuthorizationLoggingOptionsPermissionType {
  permissionTypeUnspecified("PERMISSION_TYPE_UNSPECIFIED"),
  adminRead("ADMIN_READ"),
  adminWrite("ADMIN_WRITE"),
  dataRead("DATA_READ"),
  dataWrite("DATA_WRITE");

  const AuthorizationLoggingOptionsPermissionType(this.value);
  final String value;

  static AuthorizationLoggingOptionsPermissionType fromValue(String value) {
    for (final item in AuthorizationLoggingOptionsPermissionType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
        'Unknown AuthorizationLoggingOptionsPermissionType value: $value');
  }
}
