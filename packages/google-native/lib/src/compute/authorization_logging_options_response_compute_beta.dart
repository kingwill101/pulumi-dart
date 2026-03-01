// ignore_for_file: unused_element, unnecessary_cast

/// This is deprecated and has no effect. Do not use.
class AuthorizationLoggingOptionsResponseComputeBeta {
  /// This is deprecated and has no effect. Do not use.
  final String permissionType;

  /// Creates a new [AuthorizationLoggingOptionsResponseComputeBeta].
  /// [permissionType] This is deprecated and has no effect. Do not use.
  AuthorizationLoggingOptionsResponseComputeBeta({
    required this.permissionType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'permissionType': permissionType};
  }

  factory AuthorizationLoggingOptionsResponseComputeBeta.fromMap(
    Map<String, dynamic> map,
  ) {
    return AuthorizationLoggingOptionsResponseComputeBeta(
      permissionType: map['permissionType'] as String,
    );
  }
}
