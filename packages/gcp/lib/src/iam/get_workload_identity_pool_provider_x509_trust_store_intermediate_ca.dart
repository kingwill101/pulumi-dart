// ignore_for_file: unused_element, unnecessary_cast

class GetWorkloadIdentityPoolProviderX509TrustStoreIntermediateCa {
  /// PEM certificate of the PKI used for validation. Must only contain one
  /// ca certificate(either root or intermediate cert).
  final String pemCertificate;

  /// Creates a new [GetWorkloadIdentityPoolProviderX509TrustStoreIntermediateCa].
  /// [pemCertificate] PEM certificate of the PKI used for validation. Must only contain one
  GetWorkloadIdentityPoolProviderX509TrustStoreIntermediateCa({
    required this.pemCertificate,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['pemCertificate'] = pemCertificate;
    return map;
  }

  factory GetWorkloadIdentityPoolProviderX509TrustStoreIntermediateCa.fromMap(
      Map<String, dynamic> map) {
    return GetWorkloadIdentityPoolProviderX509TrustStoreIntermediateCa(
      pemCertificate: map['pemCertificate'] as String,
    );
  }
}
