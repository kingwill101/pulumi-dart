// ignore_for_file: unused_element, unnecessary_cast

class GetListenerMutualAuthenticationLb {
  final String advertiseTrustStoreCaNames;
  final bool ignoreClientCertificateExpiry;
  final String mode;
  final String trustStoreArn;

  GetListenerMutualAuthenticationLb({
    required this.advertiseTrustStoreCaNames,
    required this.ignoreClientCertificateExpiry,
    required this.mode,
    required this.trustStoreArn,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['advertiseTrustStoreCaNames'] = advertiseTrustStoreCaNames;
    map['ignoreClientCertificateExpiry'] = ignoreClientCertificateExpiry;
    map['mode'] = mode;
    map['trustStoreArn'] = trustStoreArn;
    return map;
  }

  factory GetListenerMutualAuthenticationLb.fromMap(Map<String, dynamic> map) {
    return GetListenerMutualAuthenticationLb(
      advertiseTrustStoreCaNames: map['advertiseTrustStoreCaNames'] as String,
      ignoreClientCertificateExpiry:
          map['ignoreClientCertificateExpiry'] as bool,
      mode: map['mode'] as String,
      trustStoreArn: map['trustStoreArn'] as String,
    );
  }
}
