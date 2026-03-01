// ignore_for_file: unused_element, unnecessary_cast


class GetListenerMutualAuthentication {
  final String advertiseTrustStoreCaNames;
  final bool ignoreClientCertificateExpiry;
  final String mode;
  final String trustStoreArn;

  /// Creates a new [GetListenerMutualAuthentication].
  /// [advertiseTrustStoreCaNames] Required.
  /// [ignoreClientCertificateExpiry] Required.
  /// [mode] Required.
  /// [trustStoreArn] Required.
  GetListenerMutualAuthentication({
    required this.advertiseTrustStoreCaNames,
    required this.ignoreClientCertificateExpiry,
    required this.mode,
    required this.trustStoreArn,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'advertiseTrustStoreCaNames': advertiseTrustStoreCaNames,
      'ignoreClientCertificateExpiry': ignoreClientCertificateExpiry,
      'mode': mode,
      'trustStoreArn': trustStoreArn,
    };
  }

  factory GetListenerMutualAuthentication.fromMap(Map<String, dynamic> map) {
    return GetListenerMutualAuthentication(
      advertiseTrustStoreCaNames: map['advertiseTrustStoreCaNames'] as String,
      ignoreClientCertificateExpiry: map['ignoreClientCertificateExpiry'] as bool,
      mode: map['mode'] as String,
      trustStoreArn: map['trustStoreArn'] as String,
    );
  }
}

