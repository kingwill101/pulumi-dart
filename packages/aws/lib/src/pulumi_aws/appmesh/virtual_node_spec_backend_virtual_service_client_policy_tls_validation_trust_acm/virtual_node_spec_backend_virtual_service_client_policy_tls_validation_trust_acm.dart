// ignore_for_file: unused_element, unnecessary_cast

class VirtualNodeSpecBackendVirtualServiceClientPolicyTlsValidationTrustAcm {
  /// One or more ACM ARNs.
  final List<String> certificateAuthorityArns;

  VirtualNodeSpecBackendVirtualServiceClientPolicyTlsValidationTrustAcm({
    required this.certificateAuthorityArns,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['certificateAuthorityArns'] = certificateAuthorityArns;
    return map;
  }

  factory VirtualNodeSpecBackendVirtualServiceClientPolicyTlsValidationTrustAcm.fromMap(
      Map<String, dynamic> map) {
    return VirtualNodeSpecBackendVirtualServiceClientPolicyTlsValidationTrustAcm(
      certificateAuthorityArns:
          (map['certificateAuthorityArns'] as List).cast<String>(),
    );
  }
}
