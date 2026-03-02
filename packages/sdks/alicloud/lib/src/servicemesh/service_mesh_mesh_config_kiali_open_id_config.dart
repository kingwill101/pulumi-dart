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
      clientId: map['clientId'] == null ? null : (map['clientId'] as String).input(),
      clientSecret: map['clientSecret'] == null ? null : (map['clientSecret'] as String).input(),
      issuerUri: map['issuerUri'] == null ? null : (map['issuerUri'] as String).input(),
      scopes: map['scopes'] == null ? null : ((map['scopes'] as List).cast<String>()).input(),
    );
  }
}

