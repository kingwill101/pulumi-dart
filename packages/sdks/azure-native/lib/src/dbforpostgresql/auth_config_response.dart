// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Authentication configuration properties of a server.
class AuthConfigResponse {
  /// Indicates if the server supports Microsoft Entra authentication.
  final pulumi.Input<String>? activeDirectoryAuth;
  /// Indicates if the server supports password based authentication.
  final pulumi.Input<String>? passwordAuth;
  /// Identifier of the tenant of the delegated resource.
  final pulumi.Input<String>? tenantId;

  /// Creates a new [AuthConfigResponse].
  /// [activeDirectoryAuth] Indicates if the server supports Microsoft Entra authentication.
  /// [passwordAuth] Indicates if the server supports password based authentication.
  /// [tenantId] Identifier of the tenant of the delegated resource.
  AuthConfigResponse({
    this.activeDirectoryAuth,
    this.passwordAuth,
    this.tenantId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'activeDirectoryAuth': ?activeDirectoryAuth,
      'passwordAuth': ?passwordAuth,
      'tenantId': ?tenantId,
    };
  }

  factory AuthConfigResponse.fromMap(Map<String, dynamic> map) {
    return AuthConfigResponse(
      activeDirectoryAuth: map['activeDirectoryAuth'] == null ? null : (map['activeDirectoryAuth'] as String).input(),
      passwordAuth: map['passwordAuth'] == null ? null : (map['passwordAuth'] as String).input(),
      tenantId: map['tenantId'] == null ? null : (map['tenantId'] as String).input(),
    );
  }
}

