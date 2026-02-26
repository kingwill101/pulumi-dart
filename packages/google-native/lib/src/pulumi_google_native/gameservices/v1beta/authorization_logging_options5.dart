// ignore_for_file: unused_element, unnecessary_cast

import 'authorization_logging_options_permission_type5.dart';

/// Authorization-related information used by Cloud Audit Logging.
class AuthorizationLoggingOptions5 {
  /// The type of the permission that was checked.
  final AuthorizationLoggingOptionsPermissionType5? permissionType;

  AuthorizationLoggingOptions5({
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

  factory AuthorizationLoggingOptions5.fromMap(Map<String, dynamic> map) {
    return AuthorizationLoggingOptions5(
      permissionType: map['permissionType'] == null
          ? null
          : AuthorizationLoggingOptionsPermissionType5.fromValue(
              map['permissionType'] as String),
    );
  }
}
