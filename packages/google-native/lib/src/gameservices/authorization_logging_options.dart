// ignore_for_file: unused_element, unnecessary_cast

import 'authorization_logging_options_permission_type.dart';

/// Authorization-related information used by Cloud Audit Logging.
class AuthorizationLoggingOptions {
  /// The type of the permission that was checked.
  final AuthorizationLoggingOptionsPermissionType? permissionType;

  /// Creates a new [AuthorizationLoggingOptions].
  /// [permissionType] The type of the permission that was checked.
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
