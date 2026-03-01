// ignore_for_file: unused_element, unnecessary_cast


class GetVirtualNodeSpecBackendDefaultClientPolicyTlValidationTrustAcm {
  final List<String> certificateAuthorityArns;

  /// Creates a new [GetVirtualNodeSpecBackendDefaultClientPolicyTlValidationTrustAcm].
  /// [certificateAuthorityArns] Required.
  GetVirtualNodeSpecBackendDefaultClientPolicyTlValidationTrustAcm({
    required this.certificateAuthorityArns,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'certificateAuthorityArns': certificateAuthorityArns,
    };
  }

  factory GetVirtualNodeSpecBackendDefaultClientPolicyTlValidationTrustAcm.fromMap(Map<String, dynamic> map) {
    return GetVirtualNodeSpecBackendDefaultClientPolicyTlValidationTrustAcm(
      certificateAuthorityArns: (map['certificateAuthorityArns'] as List).cast<String>(),
    );
  }
}

