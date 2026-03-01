// ignore_for_file: unused_element, unnecessary_cast

import 'azure_key_vault_secret_reference.dart';
import 'credential_reference.dart';

/// Web activity authentication properties.
class WebActivityAuthentication {
  /// The credential reference containing authentication information.
  final CredentialReference? credential;
  /// Password for the PFX file or basic authentication / Secret when used for ServicePrincipal
  final AzureKeyVaultSecretReference? password;
  /// Base64-encoded contents of a PFX file or Certificate when used for ServicePrincipal
  final AzureKeyVaultSecretReference? pfx;
  /// Resource for which Azure Auth token will be requested when using MSI Authentication. Type: string (or Expression with resultType string).
  final dynamic resource;
  /// Web activity authentication (Basic/ClientCertificate/MSI/ServicePrincipal)
  final String? type;
  /// TenantId for which Azure Auth token will be requested when using ServicePrincipal Authentication. Type: string (or Expression with resultType string).
  final dynamic userTenant;
  /// Web activity authentication user name for basic authentication or ClientID when used for ServicePrincipal. Type: string (or Expression with resultType string).
  final dynamic username;

  /// Creates a new [WebActivityAuthentication].
  /// [credential] The credential reference containing authentication information.
  /// [password] Password for the PFX file or basic authentication / Secret when used for ServicePrincipal
  /// [pfx] Base64-encoded contents of a PFX file or Certificate when used for ServicePrincipal
  /// [resource] Resource for which Azure Auth token will be requested when using MSI Authentication. Type: string (or Expression with resultType string).
  /// [type] Web activity authentication (Basic/ClientCertificate/MSI/ServicePrincipal)
  /// [userTenant] TenantId for which Azure Auth token will be requested when using ServicePrincipal Authentication. Type: string (or Expression with resultType string).
  /// [username] Web activity authentication user name for basic authentication or ClientID when used for ServicePrincipal. Type: string (or Expression with resultType string).
  WebActivityAuthentication({
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

  factory WebActivityAuthentication.fromMap(Map<String, dynamic> map) {
    return WebActivityAuthentication(
      credential: map['credential'] == null ? null : CredentialReference.fromMap((map['credential'] as Map).cast<String, dynamic>()),
      password: map['password'] == null ? null : AzureKeyVaultSecretReference.fromMap((map['password'] as Map).cast<String, dynamic>()),
      pfx: map['pfx'] == null ? null : AzureKeyVaultSecretReference.fromMap((map['pfx'] as Map).cast<String, dynamic>()),
      resource: map['resource'] == null ? null : map['resource'],
      type: map['type'] == null ? null : map['type'] as String,
      userTenant: map['userTenant'] == null ? null : map['userTenant'],
      username: map['username'] == null ? null : map['username'],
    );
  }
}

