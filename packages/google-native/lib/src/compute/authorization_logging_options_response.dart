// ignore_for_file: unused_element, unnecessary_cast

/// This is deprecated and has no effect. Do not use.
class AuthorizationLoggingOptionsResponse {
  /// This is deprecated and has no effect. Do not use.
  final String permissionType;

  /// Creates a new [AuthorizationLoggingOptionsResponse].
  /// [permissionType] This is deprecated and has no effect. Do not use.
  AuthorizationLoggingOptionsResponse({
    required this.permissionType,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['permissionType'] = permissionType;
    return map;
  }

  factory AuthorizationLoggingOptionsResponse.fromMap(
      Map<String, dynamic> map) {
    return AuthorizationLoggingOptionsResponse(
      permissionType: map['permissionType'] as String,
    );
  }
}
