// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Properties from the Kubernetes data controller
class OnPremiseProperty {
  /// A globally unique ID identifying the associated Kubernetes cluster
  final pulumi.Input<String> id;
  /// Certificate that contains the Kubernetes cluster public key used to verify signing
  final pulumi.Input<String> publicSigningKey;
  /// Unique thumbprint returned to customer to verify the certificate being uploaded
  final pulumi.Input<String>? signingCertificateThumbprint;

  /// Creates a new [OnPremiseProperty].
  /// [id] A globally unique ID identifying the associated Kubernetes cluster
  /// [publicSigningKey] Certificate that contains the Kubernetes cluster public key used to verify signing
  /// [signingCertificateThumbprint] Unique thumbprint returned to customer to verify the certificate being uploaded
  OnPremiseProperty({
    required this.id,
    required this.publicSigningKey,
    this.signingCertificateThumbprint,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'publicSigningKey': publicSigningKey,
      'signingCertificateThumbprint': ?signingCertificateThumbprint,
    };
  }

  factory OnPremiseProperty.fromMap(Map<String, dynamic> map) {
    return OnPremiseProperty(
      id: (map['id'] as String).input(),
      publicSigningKey: (map['publicSigningKey'] as String).input(),
      signingCertificateThumbprint: map['signingCertificateThumbprint'] == null ? null : (map['signingCertificateThumbprint'] as String).input(),
    );
  }
}

