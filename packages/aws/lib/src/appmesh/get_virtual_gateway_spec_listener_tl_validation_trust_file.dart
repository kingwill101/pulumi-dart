// ignore_for_file: unused_element, unnecessary_cast

class GetVirtualGatewaySpecListenerTlValidationTrustFile {
  final String certificateChain;

  /// Creates a new [GetVirtualGatewaySpecListenerTlValidationTrustFile].
  /// [certificateChain] Required.
  GetVirtualGatewaySpecListenerTlValidationTrustFile({
    required this.certificateChain,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'certificateChain': certificateChain};
  }

  factory GetVirtualGatewaySpecListenerTlValidationTrustFile.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetVirtualGatewaySpecListenerTlValidationTrustFile(
      certificateChain: map['certificateChain'] as String,
    );
  }
}
