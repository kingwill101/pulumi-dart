// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Trusted Root certificates of an application gateway.
class ApplicationGatewayTrustedRootCertificateResponse {
  /// Certificate public data.
  final pulumi.Input<String>? data;
  /// A unique read-only string that changes whenever the resource is updated.
  final pulumi.Input<String> etag;
  /// Resource ID.
  final pulumi.Input<String>? id;
  /// Secret Id of (base-64 encoded unencrypted pfx) 'Secret' or 'Certificate' object stored in KeyVault.
  final pulumi.Input<String>? keyVaultSecretId;
  /// Name of the trusted root certificate that is unique within an Application Gateway.
  final pulumi.Input<String>? name;
  /// The provisioning state of the trusted root certificate resource.
  final pulumi.Input<String> provisioningState;
  /// Type of the resource.
  final pulumi.Input<String> type;

  /// Creates a new [ApplicationGatewayTrustedRootCertificateResponse].
  /// [data] Certificate public data.
  /// [etag] A unique read-only string that changes whenever the resource is updated.
  /// [id] Resource ID.
  /// [keyVaultSecretId] Secret Id of (base-64 encoded unencrypted pfx) 'Secret' or 'Certificate' object stored in KeyVault.
  /// [name] Name of the trusted root certificate that is unique within an Application Gateway.
  /// [provisioningState] The provisioning state of the trusted root certificate resource.
  /// [type] Type of the resource.
  ApplicationGatewayTrustedRootCertificateResponse({
    this.data,
    required this.etag,
    this.id,
    this.keyVaultSecretId,
    this.name,
    required this.provisioningState,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'data': ?data,
      'etag': etag,
      'id': ?id,
      'keyVaultSecretId': ?keyVaultSecretId,
      'name': ?name,
      'provisioningState': provisioningState,
      'type': type,
    };
  }

  factory ApplicationGatewayTrustedRootCertificateResponse.fromMap(Map<String, dynamic> map) {
    return ApplicationGatewayTrustedRootCertificateResponse(
      data: map['data'] == null ? null : (map['data']! as String).input(),
      etag: (map['etag'] as String).input(),
      id: map['id'] == null ? null : (map['id']! as String).input(),
      keyVaultSecretId: map['keyVaultSecretId'] == null ? null : (map['keyVaultSecretId']! as String).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      provisioningState: (map['provisioningState'] as String).input(),
      type: (map['type'] as String).input(),
    );
  }
}

