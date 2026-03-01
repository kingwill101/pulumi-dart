// ignore_for_file: unused_element, unnecessary_cast


class VirtualNodeSpecBackendVirtualServiceClientPolicyTlsValidationTrustAcm {
  /// One or more ACM ARNs.
  final List<String> certificateAuthorityArns;

  /// Creates a new [VirtualNodeSpecBackendVirtualServiceClientPolicyTlsValidationTrustAcm].
  /// [certificateAuthorityArns] One or more ACM ARNs.
  VirtualNodeSpecBackendVirtualServiceClientPolicyTlsValidationTrustAcm({
    required this.certificateAuthorityArns,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'certificateAuthorityArns': certificateAuthorityArns,
    };
  }

  factory VirtualNodeSpecBackendVirtualServiceClientPolicyTlsValidationTrustAcm.fromMap(Map<String, dynamic> map) {
    return VirtualNodeSpecBackendVirtualServiceClientPolicyTlsValidationTrustAcm(
      certificateAuthorityArns: (map['certificateAuthorityArns'] as List).cast<String>(),
    );
  }
}

