// ignore_for_file: unused_element, unnecessary_cast

import 'authorization_logging_options_permission_type_compute_beta.dart';

/// This is deprecated and has no effect. Do not use.
class AuthorizationLoggingOptionsComputeBeta {
  /// This is deprecated and has no effect. Do not use.
  final AuthorizationLoggingOptionsPermissionTypeComputeBeta? permissionType;

  AuthorizationLoggingOptionsComputeBeta({
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

  factory AuthorizationLoggingOptionsComputeBeta.fromMap(
      Map<String, dynamic> map) {
    return AuthorizationLoggingOptionsComputeBeta(
      permissionType: map['permissionType'] == null
          ? null
          : AuthorizationLoggingOptionsPermissionTypeComputeBeta.fromValue(
              map['permissionType'] as String),
    );
  }
}
