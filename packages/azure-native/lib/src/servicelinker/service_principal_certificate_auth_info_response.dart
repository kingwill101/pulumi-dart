// ignore_for_file: unused_element, unnecessary_cast


/// The authentication info when authType is servicePrincipal certificate
class ServicePrincipalCertificateAuthInfoResponse {
  /// Optional. Indicates how to configure authentication. If optInAllAuth, service linker configures authentication such as enabling identity on source resource and granting RBAC roles. If optOutAllAuth, opt out authentication setup. Default is optInAllAuth.
  final String? authMode;
  /// The authentication type.
  /// Expected value is 'servicePrincipalCertificate'.
  final String authType;
  /// ServicePrincipal certificate for servicePrincipal auth.
  final String certificate;
  /// Application clientId for servicePrincipal auth.
  final String clientId;
  /// Indicates whether to clean up previous operation when Linker is updating or deleting
  final String? deleteOrUpdateBehavior;
  /// Principal Id for servicePrincipal auth.
  final String principalId;
  /// Optional, this value specifies the Azure roles to be assigned. Automatically
  final List<String>? roles;

  /// Creates a new [ServicePrincipalCertificateAuthInfoResponse].
  /// [authMode] Optional. Indicates how to configure authentication. If optInAllAuth, service linker configures authentication such as enabling identity on source resource and granting RBAC roles. If optOutAllAuth, opt out authentication setup. Default is optInAllAuth.
  /// [authType] The authentication type.
  /// [certificate] ServicePrincipal certificate for servicePrincipal auth.
  /// [clientId] Application clientId for servicePrincipal auth.
  /// [deleteOrUpdateBehavior] Indicates whether to clean up previous operation when Linker is updating or deleting
  /// [principalId] Principal Id for servicePrincipal auth.
  /// [roles] Optional, this value specifies the Azure roles to be assigned. Automatically
  ServicePrincipalCertificateAuthInfoResponse({
    this.authMode,
    required this.authType,
    required this.certificate,
    required this.clientId,
    this.deleteOrUpdateBehavior,
    required this.principalId,
    this.roles,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authMode': ?authMode,
      'authType': authType,
      'certificate': certificate,
      'clientId': clientId,
      'deleteOrUpdateBehavior': ?deleteOrUpdateBehavior,
      'principalId': principalId,
      'roles': ?roles,
    };
  }

  factory ServicePrincipalCertificateAuthInfoResponse.fromMap(Map<String, dynamic> map) {
    return ServicePrincipalCertificateAuthInfoResponse(
      authMode: map['authMode'] == null ? null : map['authMode'] as String,
      authType: map['authType'] as String,
      certificate: map['certificate'] as String,
      clientId: map['clientId'] as String,
      deleteOrUpdateBehavior: map['deleteOrUpdateBehavior'] == null ? null : map['deleteOrUpdateBehavior'] as String,
      principalId: map['principalId'] as String,
      roles: map['roles'] == null ? null : (map['roles'] as List).cast<String>(),
    );
  }
}

