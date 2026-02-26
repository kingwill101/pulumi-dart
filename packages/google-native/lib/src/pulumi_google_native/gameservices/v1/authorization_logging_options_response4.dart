// ignore_for_file: unused_element, unnecessary_cast

/// Authorization-related information used by Cloud Audit Logging.
class AuthorizationLoggingOptionsResponse4 {
  /// The type of the permission that was checked.
  final String permissionType;

  AuthorizationLoggingOptionsResponse4({
    required this.permissionType,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['permissionType'] = permissionType;
    return map;
  }

  factory AuthorizationLoggingOptionsResponse4.fromMap(
      Map<String, dynamic> map) {
    return AuthorizationLoggingOptionsResponse4(
      permissionType: map['permissionType'] as String,
    );
  }
}
