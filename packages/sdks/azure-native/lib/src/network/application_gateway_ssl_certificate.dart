// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// SSL certificates of an application gateway.
class ApplicationGatewaySslCertificate {
  /// Base-64 encoded pfx certificate. Only applicable in PUT Request.
  final pulumi.Input<String>? data;
  /// Resource ID.
  final pulumi.Input<String>? id;
  /// Secret Id of (base-64 encoded unencrypted pfx) 'Secret' or 'Certificate' object stored in KeyVault.
  final pulumi.Input<String>? keyVaultSecretId;
  /// Name of the SSL certificate that is unique within an Application Gateway.
  final pulumi.Input<String>? name;
  /// Password for the pfx file specified in data. Only applicable in PUT request.
  final pulumi.Input<String>? password;

  /// Creates a new [ApplicationGatewaySslCertificate].
  /// [data] Base-64 encoded pfx certificate. Only applicable in PUT Request.
  /// [id] Resource ID.
  /// [keyVaultSecretId] Secret Id of (base-64 encoded unencrypted pfx) 'Secret' or 'Certificate' object stored in KeyVault.
  /// [name] Name of the SSL certificate that is unique within an Application Gateway.
  /// [password] Password for the pfx file specified in data. Only applicable in PUT request.
  ApplicationGatewaySslCertificate({
    this.data,
    this.id,
    this.keyVaultSecretId,
    this.name,
    this.password,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'data': ?data,
      'id': ?id,
      'keyVaultSecretId': ?keyVaultSecretId,
      'name': ?name,
      'password': ?password,
    };
  }

  factory ApplicationGatewaySslCertificate.fromMap(Map<String, dynamic> map) {
    return ApplicationGatewaySslCertificate(
      data: map['data'] == null ? null : (map['data'] as String).input(),
      id: map['id'] == null ? null : (map['id'] as String).input(),
      keyVaultSecretId: map['keyVaultSecretId'] == null ? null : (map['keyVaultSecretId'] as String).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      password: map['password'] == null ? null : (map['password'] as String).input(),
    );
  }
}

