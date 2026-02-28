// ignore_for_file: unused_element, unnecessary_cast

class GetVirtualNodeSpecBackendVirtualServiceClientPolicyTlValidationTrustAcm {
  final List<String> certificateAuthorityArns;

  /// Creates a new [GetVirtualNodeSpecBackendVirtualServiceClientPolicyTlValidationTrustAcm].
  /// [certificateAuthorityArns] Required.
  GetVirtualNodeSpecBackendVirtualServiceClientPolicyTlValidationTrustAcm({
    required this.certificateAuthorityArns,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['certificateAuthorityArns'] = certificateAuthorityArns;
    return map;
  }

  factory GetVirtualNodeSpecBackendVirtualServiceClientPolicyTlValidationTrustAcm.fromMap(
      Map<String, dynamic> map) {
    return GetVirtualNodeSpecBackendVirtualServiceClientPolicyTlValidationTrustAcm(
      certificateAuthorityArns:
          (map['certificateAuthorityArns'] as List).cast<String>(),
    );
  }
}
