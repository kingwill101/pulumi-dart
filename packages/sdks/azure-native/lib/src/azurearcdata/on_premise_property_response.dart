// ignore_for_file: unused_element, unnecessary_cast


/// Properties from the Kubernetes data controller
class OnPremisePropertyResponse {
  /// A globally unique ID identifying the associated Kubernetes cluster
  final String id;
  /// Certificate that contains the Kubernetes cluster public key used to verify signing
  final String publicSigningKey;
  /// Unique thumbprint returned to customer to verify the certificate being uploaded
  final String? signingCertificateThumbprint;

  /// Creates a new [OnPremisePropertyResponse].
  /// [id] A globally unique ID identifying the associated Kubernetes cluster
  /// [publicSigningKey] Certificate that contains the Kubernetes cluster public key used to verify signing
  /// [signingCertificateThumbprint] Unique thumbprint returned to customer to verify the certificate being uploaded
  OnPremisePropertyResponse({
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

  factory OnPremisePropertyResponse.fromMap(Map<String, dynamic> map) {
    return OnPremisePropertyResponse(
      id: map['id'] as String,
      publicSigningKey: map['publicSigningKey'] as String,
      signingCertificateThumbprint: map['signingCertificateThumbprint'] == null ? null : map['signingCertificateThumbprint'] as String,
    );
  }
}

