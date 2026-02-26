// ignore_for_file: unused_element, unnecessary_cast

/// Authorization-related information used by Cloud Audit Logging.
class AuthorizationLoggingOptionsResponse5 {
  /// The type of the permission that was checked.
  final String permissionType;

  AuthorizationLoggingOptionsResponse5({
    required this.permissionType,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['permissionType'] = permissionType;
    return map;
  }

  factory AuthorizationLoggingOptionsResponse5.fromMap(
      Map<String, dynamic> map) {
    return AuthorizationLoggingOptionsResponse5(
      permissionType: map['permissionType'] as String,
    );
  }
}
