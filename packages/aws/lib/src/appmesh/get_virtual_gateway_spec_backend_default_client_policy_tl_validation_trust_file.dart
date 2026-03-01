// ignore_for_file: unused_element, unnecessary_cast

class GetVirtualGatewaySpecBackendDefaultClientPolicyTlValidationTrustFile {
  final String certificateChain;

  /// Creates a new [GetVirtualGatewaySpecBackendDefaultClientPolicyTlValidationTrustFile].
  /// [certificateChain] Required.
  GetVirtualGatewaySpecBackendDefaultClientPolicyTlValidationTrustFile({
    required this.certificateChain,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'certificateChain': certificateChain};
  }

  factory GetVirtualGatewaySpecBackendDefaultClientPolicyTlValidationTrustFile.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetVirtualGatewaySpecBackendDefaultClientPolicyTlValidationTrustFile(
      certificateChain: map['certificateChain'] as String,
    );
  }
}
