// ignore_for_file: unused_element, unnecessary_cast

/// Authorization-related information used by Cloud Audit Logging.
class AuthorizationLoggingOptionsResponseGameservicesV1beta {
  /// The type of the permission that was checked.
  final String permissionType;

  /// Creates a new [AuthorizationLoggingOptionsResponseGameservicesV1beta].
  /// [permissionType] The type of the permission that was checked.
  AuthorizationLoggingOptionsResponseGameservicesV1beta({
    required this.permissionType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'permissionType': permissionType};
  }

  factory AuthorizationLoggingOptionsResponseGameservicesV1beta.fromMap(
    Map<String, dynamic> map,
  ) {
    return AuthorizationLoggingOptionsResponseGameservicesV1beta(
      permissionType: map['permissionType'] as String,
    );
  }
}
