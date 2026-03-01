// ignore_for_file: unused_element, unnecessary_cast


class VirtualNodeSpecBackendDefaultsClientPolicyTlsValidationTrustAcm {
  /// One or more ACM ARNs.
  final List<String> certificateAuthorityArns;

  /// Creates a new [VirtualNodeSpecBackendDefaultsClientPolicyTlsValidationTrustAcm].
  /// [certificateAuthorityArns] One or more ACM ARNs.
  VirtualNodeSpecBackendDefaultsClientPolicyTlsValidationTrustAcm({
    required this.certificateAuthorityArns,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'certificateAuthorityArns': certificateAuthorityArns,
    };
  }

  factory VirtualNodeSpecBackendDefaultsClientPolicyTlsValidationTrustAcm.fromMap(Map<String, dynamic> map) {
    return VirtualNodeSpecBackendDefaultsClientPolicyTlsValidationTrustAcm(
      certificateAuthorityArns: (map['certificateAuthorityArns'] as List).cast<String>(),
    );
  }
}

