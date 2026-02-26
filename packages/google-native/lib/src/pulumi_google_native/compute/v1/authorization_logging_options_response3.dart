// ignore_for_file: unused_element, unnecessary_cast

/// This is deprecated and has no effect. Do not use.
class AuthorizationLoggingOptionsResponse3 {
  /// This is deprecated and has no effect. Do not use.
  final String permissionType;

  AuthorizationLoggingOptionsResponse3({
    required this.permissionType,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['permissionType'] = permissionType;
    return map;
  }

  factory AuthorizationLoggingOptionsResponse3.fromMap(
      Map<String, dynamic> map) {
    return AuthorizationLoggingOptionsResponse3(
      permissionType: map['permissionType'] as String,
    );
  }
}
