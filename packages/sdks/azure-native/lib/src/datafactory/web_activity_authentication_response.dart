// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'azure_key_vault_secret_reference_response.dart';
import 'credential_reference_response.dart';

/// Web activity authentication properties.
class WebActivityAuthenticationResponse {
  /// The credential reference containing authentication information.
  final pulumi.Input<CredentialReferenceResponse>? credential;
  /// Password for the PFX file or basic authentication / Secret when used for ServicePrincipal
  final pulumi.Input<AzureKeyVaultSecretReferenceResponse>? password;
  /// Base64-encoded contents of a PFX file or Certificate when used for ServicePrincipal
  final pulumi.Input<AzureKeyVaultSecretReferenceResponse>? pfx;
  /// Resource for which Azure Auth token will be requested when using MSI Authentication. Type: string (or Expression with resultType string).
  final pulumi.Input<dynamic>? resource;
  /// Web activity authentication (Basic/ClientCertificate/MSI/ServicePrincipal)
  final pulumi.Input<String>? type;
  /// TenantId for which Azure Auth token will be requested when using ServicePrincipal Authentication. Type: string (or Expression with resultType string).
  final pulumi.Input<dynamic>? userTenant;
  /// Web activity authentication user name for basic authentication or ClientID when used for ServicePrincipal. Type: string (or Expression with resultType string).
  final pulumi.Input<dynamic>? username;

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
      'credential': ?pulumi.Input.mapOptionalInputValue<CredentialReferenceResponse, Map<String, dynamic>>(credential, (value) => value.toMap()),
      'password': ?pulumi.Input.mapOptionalInputValue<AzureKeyVaultSecretReferenceResponse, Map<String, dynamic>>(password, (value) => value.toMap()),
      'pfx': ?pulumi.Input.mapOptionalInputValue<AzureKeyVaultSecretReferenceResponse, Map<String, dynamic>>(pfx, (value) => value.toMap()),
      'resource': ?resource,
      'type': ?type,
      'userTenant': ?userTenant,
      'username': ?username,
    };
  }

  factory WebActivityAuthenticationResponse.fromMap(Map<String, dynamic> map) {
    return WebActivityAuthenticationResponse(
      credential: map['credential'] == null ? null : (CredentialReferenceResponse.fromMap((map['credential']! as Map).cast<String, dynamic>())).input(),
      password: map['password'] == null ? null : (AzureKeyVaultSecretReferenceResponse.fromMap((map['password']! as Map).cast<String, dynamic>())).input(),
      pfx: map['pfx'] == null ? null : (AzureKeyVaultSecretReferenceResponse.fromMap((map['pfx']! as Map).cast<String, dynamic>())).input(),
      resource: map['resource'] == null ? null : (map['resource']!).input(),
      type: map['type'] == null ? null : (map['type']! as String).input(),
      userTenant: map['userTenant'] == null ? null : (map['userTenant']!).input(),
      username: map['username'] == null ? null : (map['username']!).input(),
    );
  }
}

