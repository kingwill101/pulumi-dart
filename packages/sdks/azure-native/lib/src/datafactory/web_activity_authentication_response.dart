// ignore_for_file: unused_element, unnecessary_cast

import 'azure_key_vault_secret_reference_response.dart';
import 'credential_reference_response.dart';

/// Web activity authentication properties.
class WebActivityAuthenticationResponse {
  /// The credential reference containing authentication information.
  final CredentialReferenceResponse? credential;
  /// Password for the PFX file or basic authentication / Secret when used for ServicePrincipal
  final AzureKeyVaultSecretReferenceResponse? password;
  /// Base64-encoded contents of a PFX file or Certificate when used for ServicePrincipal
  final AzureKeyVaultSecretReferenceResponse? pfx;
  /// Resource for which Azure Auth token will be requested when using MSI Authentication. Type: string (or Expression with resultType string).
  final dynamic resource;
  /// Web activity authentication (Basic/ClientCertificate/MSI/ServicePrincipal)
  final String? type;
  /// TenantId for which Azure Auth token will be requested when using ServicePrincipal Authentication. Type: string (or Expression with resultType string).
  final dynamic userTenant;
  /// Web activity authentication user name for basic authentication or ClientID when used for ServicePrincipal. Type: string (or Expression with resultType string).
  final dynamic username;

  /// Creates a new [WebActivityAuthenticationResponse].
  /// [credential] The credential reference containing authentication information.
  /// [password] Password for the PFX file or basic authentication / Secret when used for ServicePrincipal
  /// [pfx] Base64-encoded contents of a PFX file or Certificate when used for ServicePrincipal
  /// [resource] Resource for which Azure Auth token will be requested when using MSI Authentication. Type: string (or Expression with resultType string).
  /// [type] Web activity authentication (Basic/ClientCertificate/MSI/ServicePrincipal)
  /// [userTenant] TenantId for which Azure Auth token will be requested when using ServicePrincipal Authentication. Type: string (or Expression with resultType string).
  /// [username] Web activity authentication user name for basic authentication or ClientID when used for ServicePrincipal. Type: string (or Expression with resultType string).
  WebActivityAuthenticationResponse({
    this.credential,
    this.password,
    this.pfx,
    this.resource,
    this.type,
    this.userTenant,
    this.username,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'credential': ?credential == null ? null : credential!.toMap(),
      'password': ?password == null ? null : password!.toMap(),
      'pfx': ?pfx == null ? null : pfx!.toMap(),
      'resource': ?resource,
      'type': ?type,
      'userTenant': ?userTenant,
      'username': ?username,
    };
  }

  factory WebActivityAuthenticationResponse.fromMap(Map<String, dynamic> map) {
    return WebActivityAuthenticationResponse(
      credential: map['credential'] == null ? null : CredentialReferenceResponse.fromMap((map['credential'] as Map).cast<String, dynamic>()),
      password: map['password'] == null ? null : AzureKeyVaultSecretReferenceResponse.fromMap((map['password'] as Map).cast<String, dynamic>()),
      pfx: map['pfx'] == null ? null : AzureKeyVaultSecretReferenceResponse.fromMap((map['pfx'] as Map).cast<String, dynamic>()),
      resource: map['resource'] == null ? null : map['resource'],
      type: map['type'] == null ? null : map['type'] as String,
      userTenant: map['userTenant'] == null ? null : map['userTenant'],
      username: map['username'] == null ? null : map['username'],
    );
  }
}

