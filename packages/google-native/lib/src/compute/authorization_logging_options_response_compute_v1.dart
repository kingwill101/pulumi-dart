// ignore_for_file: unused_element, unnecessary_cast

/// This is deprecated and has no effect. Do not use.
class AuthorizationLoggingOptionsResponseComputeV1 {
  /// This is deprecated and has no effect. Do not use.
  final String permissionType;

  /// Creates a new [AuthorizationLoggingOptionsResponseComputeV1].
  /// [permissionType] This is deprecated and has no effect. Do not use.
  AuthorizationLoggingOptionsResponseComputeV1({required this.permissionType});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'permissionType': permissionType};
  }

  factory AuthorizationLoggingOptionsResponseComputeV1.fromMap(
    Map<String, dynamic> map,
  ) {
    return AuthorizationLoggingOptionsResponseComputeV1(
      permissionType: map['permissionType'] as String,
    );
  }
}
