// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Authentication configuration properties of a server.
class AuthConfigResponse {
  /// Indicates if the server supports Microsoft Entra authentication.
  final pulumi.Input<String?>? activeDirectoryAuth;
  /// Indicates if the server supports password based authentication.
  final pulumi.Input<String?>? passwordAuth;
  /// Identifier of the tenant of the delegated resource.
  final pulumi.Input<String?>? tenantId;

  /// Creates a new [AuthConfigResponse].
  /// [activeDirectoryAuth] Indicates if the server supports Microsoft Entra authentication.
  /// [passwordAuth] Indicates if the server supports password based authentication.
  /// [tenantId] Identifier of the tenant of the delegated resource.
  AuthConfigResponse({
    this.activeDirectoryAuth,
    pulumi.Input<String?>? passwordAuth,
    pulumi.Input<String?>? tenantId,
  }) : passwordAuth = passwordAuth ?? pulumi.Input.fromValue('Enabled'), tenantId = tenantId ?? pulumi.Input.fromValue('');

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'activeDirectoryAuth': ?activeDirectoryAuth,
      'passwordAuth': ?passwordAuth,
      'tenantId': ?tenantId,
    };
  }

  factory AuthConfigResponse.fromMap(Map<String, dynamic> map) {
    return AuthConfigResponse(
      activeDirectoryAuth: (() { final guardedValue = map['activeDirectoryAuth']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      passwordAuth: (() { final guardedValue = map['passwordAuth']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tenantId: (() { final guardedValue = map['tenantId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
