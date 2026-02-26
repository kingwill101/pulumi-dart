// ignore_for_file: unused_element, unnecessary_cast

class GetWorkloadIdentityPoolInlineTrustConfigAdditionalTrustBundleTrustAnchor {
  /// PEM certificate of the PKI used for validation. Must only contain one ca
  /// certificate(either root or intermediate cert).
  final String pemCertificate;

  GetWorkloadIdentityPoolInlineTrustConfigAdditionalTrustBundleTrustAnchor({
    required this.pemCertificate,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['pemCertificate'] = pemCertificate;
    return map;
  }

  factory GetWorkloadIdentityPoolInlineTrustConfigAdditionalTrustBundleTrustAnchor.fromMap(
      Map<String, dynamic> map) {
    return GetWorkloadIdentityPoolInlineTrustConfigAdditionalTrustBundleTrustAnchor(
      pemCertificate: map['pemCertificate'] as String,
    );
  }
}
