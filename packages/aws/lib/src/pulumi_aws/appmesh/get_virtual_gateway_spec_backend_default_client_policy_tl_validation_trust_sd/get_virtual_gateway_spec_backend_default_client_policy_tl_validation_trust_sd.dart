// ignore_for_file: unused_element, unnecessary_cast

class GetVirtualGatewaySpecBackendDefaultClientPolicyTlValidationTrustSd {
  final String secretName;

  GetVirtualGatewaySpecBackendDefaultClientPolicyTlValidationTrustSd({
    required this.secretName,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['secretName'] = secretName;
    return map;
  }

  factory GetVirtualGatewaySpecBackendDefaultClientPolicyTlValidationTrustSd.fromMap(
      Map<String, dynamic> map) {
    return GetVirtualGatewaySpecBackendDefaultClientPolicyTlValidationTrustSd(
      secretName: map['secretName'] as String,
    );
  }
}
