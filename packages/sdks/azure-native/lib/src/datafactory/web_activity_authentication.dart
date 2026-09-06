// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'credential_reference.dart';

/// Web activity authentication properties.
class WebActivityAuthentication {
  /// The credential reference containing authentication information.
  final pulumi.Input<CredentialReference?>? credential;
  /// Password for the PFX file or basic authentication / Secret when used for ServicePrincipal
  final pulumi.Input<dynamic>? password;
  /// Base64-encoded contents of a PFX file or Certificate when used for ServicePrincipal
  final pulumi.Input<dynamic>? pfx;
  /// Resource for which Azure Auth token will be requested when using MSI Authentication. Type: string (or Expression with resultType string).
  final pulumi.Input<dynamic>? resource;
  /// Web activity authentication (Basic/ClientCertificate/MSI/ServicePrincipal)
  final pulumi.Input<String?>? type;
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
  const WebActivityAuthentication({
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
      'credential': ?pulumi.Input.mapOptionalInputValue<CredentialReference, Map<String, dynamic>>(credential, (value) => value.toMap()),
      'password': ?password,
      'pfx': ?pfx,
      'resource': ?resource,
      'type': ?type,
      'userTenant': ?userTenant,
      'username': ?username,
    };
  }

  factory WebActivityAuthentication.fromMap(Map<String, dynamic> map) {
    return WebActivityAuthentication(
      credential: (() { final guardedValue = map['credential']; if (guardedValue == null) return null; return pulumi.Input.fromValue(CredentialReference.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      password: (() { final guardedValue = map['password']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      pfx: (() { final guardedValue = map['pfx']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      resource: (() { final guardedValue = map['resource']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      userTenant: (() { final guardedValue = map['userTenant']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      username: (() { final guardedValue = map['username']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
    );
  }
}
