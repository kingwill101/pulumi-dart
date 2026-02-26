// ignore_for_file: unused_element, unnecessary_cast

class GetVirtualGatewaySpecBackendDefaultClientPolicyTlValidationTrustFile {
  final String certificateChain;

  GetVirtualGatewaySpecBackendDefaultClientPolicyTlValidationTrustFile({
    required this.certificateChain,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['certificateChain'] = certificateChain;
    return map;
  }

  factory GetVirtualGatewaySpecBackendDefaultClientPolicyTlValidationTrustFile.fromMap(
      Map<String, dynamic> map) {
    return GetVirtualGatewaySpecBackendDefaultClientPolicyTlValidationTrustFile(
      certificateChain: map['certificateChain'] as String,
    );
  }
}
