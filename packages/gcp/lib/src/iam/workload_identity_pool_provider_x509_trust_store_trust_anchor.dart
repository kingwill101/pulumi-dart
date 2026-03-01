// ignore_for_file: unused_element, unnecessary_cast

class WorkloadIdentityPoolProviderX509TrustStoreTrustAnchor {
  /// PEM certificate of the PKI used for validation. Must only contain one
  /// ca certificate(either root or intermediate cert).
  final String? pemCertificate;

  /// Creates a new [WorkloadIdentityPoolProviderX509TrustStoreTrustAnchor].
  /// [pemCertificate] PEM certificate of the PKI used for validation. Must only contain one
  WorkloadIdentityPoolProviderX509TrustStoreTrustAnchor({this.pemCertificate});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'pemCertificate': ?pemCertificate};
  }

  factory WorkloadIdentityPoolProviderX509TrustStoreTrustAnchor.fromMap(
    Map<String, dynamic> map,
  ) {
    return WorkloadIdentityPoolProviderX509TrustStoreTrustAnchor(
      pemCertificate: map['pemCertificate'] == null
          ? null
          : map['pemCertificate'] as String,
    );
  }
}
