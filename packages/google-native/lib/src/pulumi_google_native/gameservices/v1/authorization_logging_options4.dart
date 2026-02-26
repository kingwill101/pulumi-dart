// ignore_for_file: unused_element, unnecessary_cast

import 'authorization_logging_options_permission_type4.dart';

/// Authorization-related information used by Cloud Audit Logging.
class AuthorizationLoggingOptions4 {
  /// The type of the permission that was checked.
  final AuthorizationLoggingOptionsPermissionType4? permissionType;

  AuthorizationLoggingOptions4({
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

  factory AuthorizationLoggingOptions4.fromMap(Map<String, dynamic> map) {
    return AuthorizationLoggingOptions4(
      permissionType: map['permissionType'] == null
          ? null
          : AuthorizationLoggingOptionsPermissionType4.fromValue(
              map['permissionType'] as String),
    );
  }
}
