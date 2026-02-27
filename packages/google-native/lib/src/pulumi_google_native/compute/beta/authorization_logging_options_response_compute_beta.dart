// ignore_for_file: unused_element, unnecessary_cast

/// This is deprecated and has no effect. Do not use.
class AuthorizationLoggingOptionsResponseComputeBeta {
  /// This is deprecated and has no effect. Do not use.
  final String permissionType;

  AuthorizationLoggingOptionsResponseComputeBeta({
    required this.permissionType,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['permissionType'] = permissionType;
    return map;
  }

  factory AuthorizationLoggingOptionsResponseComputeBeta.fromMap(
      Map<String, dynamic> map) {
    return AuthorizationLoggingOptionsResponseComputeBeta(
      permissionType: map['permissionType'] as String,
    );
  }
}
