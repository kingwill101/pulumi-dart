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
  const OnPremiseProperty({
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
      id: pulumi.Input.fromValue(map['id'] as String),
      publicSigningKey: pulumi.Input.fromValue(map['publicSigningKey'] as String),
      signingCertificateThumbprint: (() { final guardedValue = map['signingCertificateThumbprint']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
