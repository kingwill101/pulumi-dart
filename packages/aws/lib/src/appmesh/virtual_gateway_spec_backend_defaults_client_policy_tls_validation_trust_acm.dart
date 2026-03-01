// ignore_for_file: unused_element, unnecessary_cast

class VirtualGatewaySpecBackendDefaultsClientPolicyTlsValidationTrustAcm {
  /// One or more ACM ARNs.
  final List<String> certificateAuthorityArns;

  /// Creates a new [VirtualGatewaySpecBackendDefaultsClientPolicyTlsValidationTrustAcm].
  /// [certificateAuthorityArns] One or more ACM ARNs.
  VirtualGatewaySpecBackendDefaultsClientPolicyTlsValidationTrustAcm({
    required this.certificateAuthorityArns,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'certificateAuthorityArns': certificateAuthorityArns,
    };
  }

  factory VirtualGatewaySpecBackendDefaultsClientPolicyTlsValidationTrustAcm.fromMap(
    Map<String, dynamic> map,
  ) {
    return VirtualGatewaySpecBackendDefaultsClientPolicyTlsValidationTrustAcm(
      certificateAuthorityArns: (map['certificateAuthorityArns'] as List)
          .cast<String>(),
    );
  }
}
