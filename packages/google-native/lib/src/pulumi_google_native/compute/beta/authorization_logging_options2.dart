// ignore_for_file: unused_element, unnecessary_cast

import 'authorization_logging_options_permission_type2.dart';

/// This is deprecated and has no effect. Do not use.
class AuthorizationLoggingOptions2 {
  /// This is deprecated and has no effect. Do not use.
  final AuthorizationLoggingOptionsPermissionType2? permissionType;

  AuthorizationLoggingOptions2({
    this.permissionType,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final permissionTypeValue = permissionType;
    if (permissionTypeValue != null) {
      map['permissionType'] = permissionTypeValue.value;
    }
    return map;
  }

  factory AuthorizationLoggingOptions2.fromMap(Map<String, dynamic> map) {
    return AuthorizationLoggingOptions2(
      permissionType: map['permissionType'] == null
          ? null
          : AuthorizationLoggingOptionsPermissionType2.fromValue(
              map['permissionType'] as String),
    );
  }
}
