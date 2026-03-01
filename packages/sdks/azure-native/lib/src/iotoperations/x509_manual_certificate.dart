// ignore_for_file: unused_element, unnecessary_cast


/// X509 Certificate Authentication properties.
class X509ManualCertificate {
  /// Kubernetes secret containing an X.509 client certificate. This is a reference to the secret through an identifying name, not the secret itself.
  final String secretRef;

  /// Creates a new [X509ManualCertificate].
  /// [secretRef] Kubernetes secret containing an X.509 client certificate. This is a reference to the secret through an identifying name, not the secret itself.
  X509ManualCertificate({
    required this.secretRef,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'secretRef': secretRef,
    };
  }

  factory X509ManualCertificate.fromMap(Map<String, dynamic> map) {
    return X509ManualCertificate(
      secretRef: map['secretRef'] as String,
    );
  }
}

