// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'azure_key_vault_secret_reference.dart';
import 'credential_reference.dart';

/// Web activity authentication properties.
class WebActivityAuthentication {
  /// The credential reference containing authentication information.
  final pulumi.Input<CredentialReference>? credential;

  /// Password for the PFX file or basic authentication / Secret when used for ServicePrincipal
  final pulumi.Input<AzureKeyVaultSecretReference>? password;

  /// Base64-encoded contents of a PFX file or Certificate when used for ServicePrincipal
  final pulumi.Input<AzureKeyVaultSecretReference>? pfx;

  /// Resource for which Azure Auth token will be requested when using MSI Authentication. Type: string (or Expression with resultType string).
  final pulumi.Input<dynamic>? resource;

  /// Web activity authentication (Basic/ClientCertificate/MSI/ServicePrincipal)
  final pulumi.Input<String>? type;

  /// TenantId for which Azure Auth token will be requested when using ServicePrincipal Authentication. Type: string (or Expression with resultType string).
  final pulumi.Input<dynamic>? userTenant;

  /// Web activity authentication user name for basic authentication or ClientID when used for ServicePrincipal. Type: string (or Expression with resultType string).
  final pulumi.Input<dynamic>? username;

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
      'credential':
          ?pulumi.Input.mapOptionalInputValue<
            CredentialReference,
            Map<String, dynamic>
          >(credential, (value) => value.toMap()),
      'password':
          ?pulumi.Input.mapOptionalInputValue<
            AzureKeyVaultSecretReference,
            Map<String, dynamic>
          >(password, (value) => value.toMap()),
      'pfx':
          ?pulumi.Input.mapOptionalInputValue<
            AzureKeyVaultSecretReference,
            Map<String, dynamic>
          >(pfx, (value) => value.toMap()),
      'resource': ?resource,
      'type': ?type,
      'userTenant': ?userTenant,
      'username': ?username,
    };
  }

  factory WebActivityAuthentication.fromMap(Map<String, dynamic> map) {
    return WebActivityAuthentication(
      credential: (() {
        final guardedValue = map['credential'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          CredentialReference.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      password: (() {
        final guardedValue = map['password'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          AzureKeyVaultSecretReference.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      pfx: (() {
        final guardedValue = map['pfx'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          AzureKeyVaultSecretReference.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      resource: (() {
        final guardedValue = map['resource'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue);
      })(),
      type: (() {
        final guardedValue = map['type'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      userTenant: (() {
        final guardedValue = map['userTenant'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue);
      })(),
      username: (() {
        final guardedValue = map['username'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue);
      })(),
    );
  }
}
