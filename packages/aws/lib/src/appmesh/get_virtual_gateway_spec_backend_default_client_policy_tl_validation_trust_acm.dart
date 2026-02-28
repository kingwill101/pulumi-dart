// ignore_for_file: unused_element, unnecessary_cast


class GetVirtualGatewaySpecBackendDefaultClientPolicyTlValidationTrustAcm {
  final List<String> certificateAuthorityArns;

  /// Creates a new [GetVirtualGatewaySpecBackendDefaultClientPolicyTlValidationTrustAcm].
  /// [certificateAuthorityArns] Required.
  GetVirtualGatewaySpecBackendDefaultClientPolicyTlValidationTrustAcm({
    required this.certificateAuthorityArns,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'certificateAuthorityArns': certificateAuthorityArns,
    };
  }

  factory GetVirtualGatewaySpecBackendDefaultClientPolicyTlValidationTrustAcm.fromMap(Map<String, dynamic> map) {
    return GetVirtualGatewaySpecBackendDefaultClientPolicyTlValidationTrustAcm(
      certificateAuthorityArns: (map['certificateAuthorityArns'] as List).cast<String>(),
    );
  }
}

