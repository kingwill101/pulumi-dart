// ignore_for_file: unused_element, unnecessary_cast

class WorkloadIdentityPoolInlineTrustConfigAdditionalTrustBundleTrustAnchor {
  /// PEM certificate of the PKI used for validation. Must only contain one ca
  /// certificate(either root or intermediate cert).
  final String pemCertificate;

  /// Creates a new [WorkloadIdentityPoolInlineTrustConfigAdditionalTrustBundleTrustAnchor].
  /// [pemCertificate] PEM certificate of the PKI used for validation. Must only contain one ca
  WorkloadIdentityPoolInlineTrustConfigAdditionalTrustBundleTrustAnchor({
    required this.pemCertificate,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'pemCertificate': pemCertificate};
  }

  factory WorkloadIdentityPoolInlineTrustConfigAdditionalTrustBundleTrustAnchor.fromMap(
    Map<String, dynamic> map,
  ) {
    return WorkloadIdentityPoolInlineTrustConfigAdditionalTrustBundleTrustAnchor(
      pemCertificate: map['pemCertificate'] as String,
    );
  }
}
