// ignore_for_file: unused_element, unnecessary_cast


class GetVirtualGatewaySpecBackendDefaultClientPolicyTlValidationTrustSd {
  final String secretName;

  /// Creates a new [GetVirtualGatewaySpecBackendDefaultClientPolicyTlValidationTrustSd].
  /// [secretName] Required.
  GetVirtualGatewaySpecBackendDefaultClientPolicyTlValidationTrustSd({
    required this.secretName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'secretName': secretName,
    };
  }

  factory GetVirtualGatewaySpecBackendDefaultClientPolicyTlValidationTrustSd.fromMap(Map<String, dynamic> map) {
    return GetVirtualGatewaySpecBackendDefaultClientPolicyTlValidationTrustSd(
      secretName: map['secretName'] as String,
    );
  }
}

