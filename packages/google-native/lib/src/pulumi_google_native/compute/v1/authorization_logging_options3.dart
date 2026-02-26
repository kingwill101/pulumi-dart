// ignore_for_file: unused_element, unnecessary_cast

import 'authorization_logging_options_permission_type3.dart';

/// This is deprecated and has no effect. Do not use.
class AuthorizationLoggingOptions3 {
  /// This is deprecated and has no effect. Do not use.
  final AuthorizationLoggingOptionsPermissionType3? permissionType;

  AuthorizationLoggingOptions3({
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

  factory AuthorizationLoggingOptions3.fromMap(Map<String, dynamic> map) {
    return AuthorizationLoggingOptions3(
      permissionType: map['permissionType'] == null
          ? null
          : AuthorizationLoggingOptionsPermissionType3.fromValue(
              map['permissionType'] as String),
    );
  }
}
