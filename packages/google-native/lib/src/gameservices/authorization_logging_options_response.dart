// ignore_for_file: unused_element, unnecessary_cast

/// Authorization-related information used by Cloud Audit Logging.
class AuthorizationLoggingOptionsResponse {
  /// The type of the permission that was checked.
  final String permissionType;

  /// Creates a new [AuthorizationLoggingOptionsResponse].
  /// [permissionType] The type of the permission that was checked.
  AuthorizationLoggingOptionsResponse({required this.permissionType});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'permissionType': permissionType};
  }

  factory AuthorizationLoggingOptionsResponse.fromMap(
    Map<String, dynamic> map,
  ) {
    return AuthorizationLoggingOptionsResponse(
      permissionType: map['permissionType'] as String,
    );
  }
}
