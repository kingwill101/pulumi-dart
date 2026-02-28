// ignore_for_file: unused_element, unnecessary_cast


class VirtualNodeSpecListenerTlsValidationTrustSds {
  /// Name of the secret for a virtual node's Transport Layer Security (TLS) Secret Discovery Service validation context trust.
  final String secretName;

  /// Creates a new [VirtualNodeSpecListenerTlsValidationTrustSds].
  /// [secretName] Name of the secret for a virtual node's Transport Layer Security (TLS) Secret Discovery Service validation context trust.
  VirtualNodeSpecListenerTlsValidationTrustSds({
    required this.secretName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'secretName': secretName,
    };
  }

  factory VirtualNodeSpecListenerTlsValidationTrustSds.fromMap(Map<String, dynamic> map) {
    return VirtualNodeSpecListenerTlsValidationTrustSds(
      secretName: map['secretName'] as String,
    );
  }
}

