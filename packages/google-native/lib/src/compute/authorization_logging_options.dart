// ignore_for_file: unused_element, unnecessary_cast

import 'authorization_logging_options_permission_type.dart';

/// This is deprecated and has no effect. Do not use.
class AuthorizationLoggingOptions {
  /// This is deprecated and has no effect. Do not use.
  final AuthorizationLoggingOptionsPermissionType? permissionType;

  /// Creates a new [AuthorizationLoggingOptions].
  /// [permissionType] This is deprecated and has no effect. Do not use.
  AuthorizationLoggingOptions({
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

  factory AuthorizationLoggingOptions.fromMap(Map<String, dynamic> map) {
    return AuthorizationLoggingOptions(
      permissionType: map['permissionType'] == null
          ? null
          : AuthorizationLoggingOptionsPermissionType.fromValue(
              map['permissionType'] as String),
    );
  }
}
