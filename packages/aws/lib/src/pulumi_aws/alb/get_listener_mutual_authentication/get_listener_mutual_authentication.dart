// ignore_for_file: unused_element, unnecessary_cast

class GetListenerMutualAuthentication {
  final String advertiseTrustStoreCaNames;
  final bool ignoreClientCertificateExpiry;
  final String mode;
  final String trustStoreArn;

  GetListenerMutualAuthentication({
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

  factory GetListenerMutualAuthentication.fromMap(Map<String, dynamic> map) {
    return GetListenerMutualAuthentication(
      advertiseTrustStoreCaNames: map['advertiseTrustStoreCaNames'] as String,
      ignoreClientCertificateExpiry:
          map['ignoreClientCertificateExpiry'] as bool,
      mode: map['mode'] as String,
      trustStoreArn: map['trustStoreArn'] as String,
    );
  }
}
