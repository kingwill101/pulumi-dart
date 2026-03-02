// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// SSL certificates of an application gateway.
class ApplicationGatewaySslCertificateResponse {
  /// Base-64 encoded pfx certificate. Only applicable in PUT Request.
  final pulumi.Input<String>? data;
  /// A unique read-only string that changes whenever the resource is updated.
  final pulumi.Input<String> etag;
  /// Resource ID.
  final pulumi.Input<String>? id;
  /// Secret Id of (base-64 encoded unencrypted pfx) 'Secret' or 'Certificate' object stored in KeyVault.
  final pulumi.Input<String>? keyVaultSecretId;
  /// Name of the SSL certificate that is unique within an Application Gateway.
  final pulumi.Input<String>? name;
  /// Password for the pfx file specified in data. Only applicable in PUT request.
  final pulumi.Input<String>? password;
  /// The provisioning state of the SSL certificate resource.
  final pulumi.Input<String> provisioningState;
  /// Base-64 encoded Public cert data corresponding to pfx specified in data. Only applicable in GET request.
  final pulumi.Input<String> publicCertData;
  /// Type of the resource.
  final pulumi.Input<String> type;

  /// Creates a new [ApplicationGatewaySslCertificateResponse].
  /// [data] Base-64 encoded pfx certificate. Only applicable in PUT Request.
  /// [etag] A unique read-only string that changes whenever the resource is updated.
  /// [id] Resource ID.
  /// [keyVaultSecretId] Secret Id of (base-64 encoded unencrypted pfx) 'Secret' or 'Certificate' object stored in KeyVault.
  /// [name] Name of the SSL certificate that is unique within an Application Gateway.
  /// [password] Password for the pfx file specified in data. Only applicable in PUT request.
  /// [provisioningState] The provisioning state of the SSL certificate resource.
  /// [publicCertData] Base-64 encoded Public cert data corresponding to pfx specified in data. Only applicable in GET request.
  /// [type] Type of the resource.
  ApplicationGatewaySslCertificateResponse({
    this.data,
    required this.etag,
    this.id,
    this.keyVaultSecretId,
    this.name,
    this.password,
    required this.provisioningState,
    required this.publicCertData,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'data': ?data,
      'etag': etag,
      'id': ?id,
      'keyVaultSecretId': ?keyVaultSecretId,
      'name': ?name,
      'password': ?password,
      'provisioningState': provisioningState,
      'publicCertData': publicCertData,
      'type': type,
    };
  }

  factory ApplicationGatewaySslCertificateResponse.fromMap(Map<String, dynamic> map) {
    return ApplicationGatewaySslCertificateResponse(
      data: map['data'] == null ? null : (map['data']! as String).input(),
      etag: (map['etag'] as String).input(),
      id: map['id'] == null ? null : (map['id']! as String).input(),
      keyVaultSecretId: map['keyVaultSecretId'] == null ? null : (map['keyVaultSecretId']! as String).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      password: map['password'] == null ? null : (map['password']! as String).input(),
      provisioningState: (map['provisioningState'] as String).input(),
      publicCertData: (map['publicCertData'] as String).input(),
      type: (map['type'] as String).input(),
    );
  }
}

