// ignore_for_file: unused_element, unnecessary_cast

/// This is deprecated and has no effect. Do not use.
class AuthorizationLoggingOptionsResponse2 {
  /// This is deprecated and has no effect. Do not use.
  final String permissionType;

  AuthorizationLoggingOptionsResponse2({
    required this.permissionType,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['permissionType'] = permissionType;
    return map;
  }

  factory AuthorizationLoggingOptionsResponse2.fromMap(
      Map<String, dynamic> map) {
    return AuthorizationLoggingOptionsResponse2(
      permissionType: map['permissionType'] as String,
    );
  }
}
