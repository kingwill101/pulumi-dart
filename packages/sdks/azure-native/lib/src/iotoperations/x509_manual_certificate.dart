// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// X509 Certificate Authentication properties.
class X509ManualCertificate {
  /// Kubernetes secret containing an X.509 client certificate. This is a reference to the secret through an identifying name, not the secret itself.
  final pulumi.Input<String> secretRef;

  /// Creates a new [X509ManualCertificate].
  /// [secretRef] Kubernetes secret containing an X.509 client certificate. This is a reference to the secret through an identifying name, not the secret itself.
  const X509ManualCertificate({
    required this.secretRef,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'secretRef': secretRef,
    };
  }

  factory X509ManualCertificate.fromMap(Map<String, dynamic> map) {
    return X509ManualCertificate(
      secretRef: pulumi.Input.fromValue(map['secretRef'] as String),
    );
  }
}
