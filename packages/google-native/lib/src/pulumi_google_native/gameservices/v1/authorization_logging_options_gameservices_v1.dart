// ignore_for_file: unused_element, unnecessary_cast

import 'authorization_logging_options_permission_type_gameservices_v1.dart';

/// Authorization-related information used by Cloud Audit Logging.
class AuthorizationLoggingOptionsGameservicesV1 {
  /// The type of the permission that was checked.
  final AuthorizationLoggingOptionsPermissionTypeGameservicesV1? permissionType;

  AuthorizationLoggingOptionsGameservicesV1({
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

  factory AuthorizationLoggingOptionsGameservicesV1.fromMap(
      Map<String, dynamic> map) {
    return AuthorizationLoggingOptionsGameservicesV1(
      permissionType: map['permissionType'] == null
          ? null
          : AuthorizationLoggingOptionsPermissionTypeGameservicesV1.fromValue(
              map['permissionType'] as String),
    );
  }
}
