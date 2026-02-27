// ignore_for_file: unused_element, unnecessary_cast

/// Authorization-related information used by Cloud Audit Logging.
class AuthorizationLoggingOptionsResponseGameservicesV1 {
  /// The type of the permission that was checked.
  final String permissionType;

  AuthorizationLoggingOptionsResponseGameservicesV1({
    required this.permissionType,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['permissionType'] = permissionType;
    return map;
  }

  factory AuthorizationLoggingOptionsResponseGameservicesV1.fromMap(
      Map<String, dynamic> map) {
    return AuthorizationLoggingOptionsResponseGameservicesV1(
      permissionType: map['permissionType'] as String,
    );
  }
}
