// ignore_for_file: unused_element, unnecessary_cast


/// Authentication configuration properties of a server.
class AuthConfigResponse {
  /// Indicates if the server supports Microsoft Entra authentication.
  final String? activeDirectoryAuth;
  /// Indicates if the server supports password based authentication.
  final String? passwordAuth;
  /// Identifier of the tenant of the delegated resource.
  final String? tenantId;

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
      activeDirectoryAuth: map['activeDirectoryAuth'] == null ? null : map['activeDirectoryAuth'] as String,
      passwordAuth: map['passwordAuth'] == null ? null : map['passwordAuth'] as String,
      tenantId: map['tenantId'] == null ? null : map['tenantId'] as String,
    );
  }
}

