// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Authentication configuration properties of a server.
class AuthConfig {
  /// Indicates if the server supports Microsoft Entra authentication.
  final pulumi.Input<dynamic>? activeDirectoryAuth;
  /// Indicates if the server supports password based authentication.
  final pulumi.Input<dynamic>? passwordAuth;
  /// Identifier of the tenant of the delegated resource.
  final pulumi.Input<String?>? tenantId;

  /// Creates a new [AuthConfig].
  /// [activeDirectoryAuth] Indicates if the server supports Microsoft Entra authentication.
  /// [passwordAuth] Indicates if the server supports password based authentication.
  /// [tenantId] Identifier of the tenant of the delegated resource.
  AuthConfig({
    this.activeDirectoryAuth,
    pulumi.Input<dynamic>? passwordAuth,
    pulumi.Input<String?>? tenantId,
  }) : passwordAuth = passwordAuth ?? pulumi.Input.fromValue('Enabled'), tenantId = tenantId ?? pulumi.Input.fromValue('');

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'activeDirectoryAuth': ?activeDirectoryAuth,
      'passwordAuth': ?passwordAuth,
      'tenantId': ?tenantId,
    };
  }

  factory AuthConfig.fromMap(Map<String, dynamic> map) {
    return AuthConfig(
      activeDirectoryAuth: (() { final guardedValue = map['activeDirectoryAuth']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      passwordAuth: (() { final guardedValue = map['passwordAuth']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      tenantId: (() { final guardedValue = map['tenantId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
