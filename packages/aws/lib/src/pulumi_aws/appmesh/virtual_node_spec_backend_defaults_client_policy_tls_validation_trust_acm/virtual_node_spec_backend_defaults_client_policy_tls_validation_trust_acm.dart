// ignore_for_file: unused_element, unnecessary_cast

class VirtualNodeSpecBackendDefaultsClientPolicyTlsValidationTrustAcm {
  /// One or more ACM ARNs.
  final List<String> certificateAuthorityArns;

  VirtualNodeSpecBackendDefaultsClientPolicyTlsValidationTrustAcm({
    required this.certificateAuthorityArns,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['certificateAuthorityArns'] = certificateAuthorityArns;
    return map;
  }

  factory VirtualNodeSpecBackendDefaultsClientPolicyTlsValidationTrustAcm.fromMap(
      Map<String, dynamic> map) {
    return VirtualNodeSpecBackendDefaultsClientPolicyTlsValidationTrustAcm(
      certificateAuthorityArns:
          (map['certificateAuthorityArns'] as List).cast<String>(),
    );
  }
}
