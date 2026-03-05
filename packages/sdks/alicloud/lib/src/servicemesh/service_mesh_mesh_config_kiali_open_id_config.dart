// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ServiceMeshMeshConfigKialiOpenIdConfig {
  /// The client id provided by the OIDC application
  final pulumi.Input<String>? clientId;
  /// The client secret provided by the OIDC application
  final pulumi.Input<String>? clientSecret;
  /// OIDC应用的Issuer URI
  final pulumi.Input<String>? issuerUri;
  /// The scope of the mesh topology request to the OIDC application
  final pulumi.Input<List<String>>? scopes;

  /// Creates a new [ServiceMeshMeshConfigKialiOpenIdConfig].
  /// [clientId] The client id provided by the OIDC application
  /// [clientSecret] The client secret provided by the OIDC application
  /// [issuerUri] OIDC应用的Issuer URI
  /// [scopes] The scope of the mesh topology request to the OIDC application
  ServiceMeshMeshConfigKialiOpenIdConfig({
    this.clientId,
    this.clientSecret,
    this.issuerUri,
    this.scopes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clientId': ?clientId,
      'clientSecret': ?clientSecret,
      'issuerUri': ?issuerUri,
      'scopes': ?scopes,
    };
  }

  factory ServiceMeshMeshConfigKialiOpenIdConfig.fromMap(Map<String, dynamic> map) {
    return ServiceMeshMeshConfigKialiOpenIdConfig(
      clientId: (() { final guardedValue = map['clientId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      clientSecret: (() { final guardedValue = map['clientSecret']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      issuerUri: (() { final guardedValue = map['issuerUri']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      scopes: (() { final guardedValue = map['scopes']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}

