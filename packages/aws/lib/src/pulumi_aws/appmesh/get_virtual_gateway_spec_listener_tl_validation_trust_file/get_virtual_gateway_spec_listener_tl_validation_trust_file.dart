// ignore_for_file: unused_element, unnecessary_cast

class GetVirtualGatewaySpecListenerTlValidationTrustFile {
  final String certificateChain;

  GetVirtualGatewaySpecListenerTlValidationTrustFile({
    required this.certificateChain,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['certificateChain'] = certificateChain;
    return map;
  }

  factory GetVirtualGatewaySpecListenerTlValidationTrustFile.fromMap(
      Map<String, dynamic> map) {
    return GetVirtualGatewaySpecListenerTlValidationTrustFile(
      certificateChain: map['certificateChain'] as String,
    );
  }
}
