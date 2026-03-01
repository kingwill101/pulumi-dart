// ignore_for_file: unused_element, unnecessary_cast

class GetVirtualNodeSpecBackendVirtualServiceClientPolicyTlValidationTrustAcm {
  final List<String> certificateAuthorityArns;

  /// Creates a new [GetVirtualNodeSpecBackendVirtualServiceClientPolicyTlValidationTrustAcm].
  /// [certificateAuthorityArns] Required.
  GetVirtualNodeSpecBackendVirtualServiceClientPolicyTlValidationTrustAcm({
    required this.certificateAuthorityArns,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'certificateAuthorityArns': certificateAuthorityArns,
    };
  }

  factory GetVirtualNodeSpecBackendVirtualServiceClientPolicyTlValidationTrustAcm.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetVirtualNodeSpecBackendVirtualServiceClientPolicyTlValidationTrustAcm(
      certificateAuthorityArns: (map['certificateAuthorityArns'] as List)
          .cast<String>(),
    );
  }
}
