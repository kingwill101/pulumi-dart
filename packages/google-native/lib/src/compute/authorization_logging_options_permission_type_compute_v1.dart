/// This is deprecated and has no effect. Do not use.
enum AuthorizationLoggingOptionsPermissionTypeComputeV1 {
  adminRead("ADMIN_READ"),
  adminWrite("ADMIN_WRITE"),
  dataRead("DATA_READ"),
  dataWrite("DATA_WRITE"),
  permissionTypeUnspecified("PERMISSION_TYPE_UNSPECIFIED");

  const AuthorizationLoggingOptionsPermissionTypeComputeV1(this.value);
  final String value;

  static AuthorizationLoggingOptionsPermissionTypeComputeV1 fromValue(String value) {
    for (final item in AuthorizationLoggingOptionsPermissionTypeComputeV1.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AuthorizationLoggingOptionsPermissionTypeComputeV1 value: $value');
  }
}

