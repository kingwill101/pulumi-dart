// ignore_for_file: unused_element, unnecessary_cast

import 'authorization_logging_options_permission_type_compute_v1.dart';

/// This is deprecated and has no effect. Do not use.
class AuthorizationLoggingOptionsComputeV1 {
  /// This is deprecated and has no effect. Do not use.
  final AuthorizationLoggingOptionsPermissionTypeComputeV1? permissionType;

  /// Creates a new [AuthorizationLoggingOptionsComputeV1].
  /// [permissionType] This is deprecated and has no effect. Do not use.
  AuthorizationLoggingOptionsComputeV1({
    this.permissionType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'permissionType': ?permissionType == null ? null : permissionType!.value,
    };
  }

  factory AuthorizationLoggingOptionsComputeV1.fromMap(Map<String, dynamic> map) {
    return AuthorizationLoggingOptionsComputeV1(
      permissionType: map['permissionType'] == null ? null : AuthorizationLoggingOptionsPermissionTypeComputeV1.fromValue(map['permissionType'] as String),
    );
  }
}

