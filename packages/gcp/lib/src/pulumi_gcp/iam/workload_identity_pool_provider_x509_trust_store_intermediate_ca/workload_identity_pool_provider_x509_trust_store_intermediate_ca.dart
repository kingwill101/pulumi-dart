// ignore_for_file: unused_element, unnecessary_cast

class WorkloadIdentityPoolProviderX509TrustStoreIntermediateCa {
  /// PEM certificate of the PKI used for validation. Must only contain one
  /// ca certificate(either root or intermediate cert).
  final String? pemCertificate;

  WorkloadIdentityPoolProviderX509TrustStoreIntermediateCa({
    this.pemCertificate,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final pemCertificateValue = pemCertificate;
    if (pemCertificateValue != null) {
      map['pemCertificate'] = pemCertificateValue;
    }
    return map;
  }

  factory WorkloadIdentityPoolProviderX509TrustStoreIntermediateCa.fromMap(
      Map<String, dynamic> map) {
    return WorkloadIdentityPoolProviderX509TrustStoreIntermediateCa(
      pemCertificate: map['pemCertificate'] == null
          ? null
          : map['pemCertificate'] as String,
    );
  }
}
