// ignore_for_file: unused_element, unnecessary_cast


/// Authentication configuration properties of a server.
class AuthConfig {
  /// Indicates if the server supports Microsoft Entra authentication.
  final String? activeDirectoryAuth;
  /// Indicates if the server supports password based authentication.
  final String? passwordAuth;
  /// Identifier of the tenant of the delegated resource.
  final String? tenantId;

  /// Creates a new [AuthConfig].
  /// [activeDirectoryAuth] Indicates if the server supports Microsoft Entra authentication.
  /// [passwordAuth] Indicates if the server supports password based authentication.
  /// [tenantId] Identifier of the tenant of the delegated resource.
  AuthConfig({
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

  factory AuthConfig.fromMap(Map<String, dynamic> map) {
    return AuthConfig(
      activeDirectoryAuth: map['activeDirectoryAuth'] == null ? null : map['activeDirectoryAuth'] as String,
      passwordAuth: map['passwordAuth'] == null ? null : map['passwordAuth'] as String,
      tenantId: map['tenantId'] == null ? null : map['tenantId'] as String,
    );
  }
}

