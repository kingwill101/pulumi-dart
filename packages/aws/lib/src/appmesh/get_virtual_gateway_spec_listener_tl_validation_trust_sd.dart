// ignore_for_file: unused_element, unnecessary_cast

class GetVirtualGatewaySpecListenerTlValidationTrustSd {
  final String secretName;

  /// Creates a new [GetVirtualGatewaySpecListenerTlValidationTrustSd].
  /// [secretName] Required.
  GetVirtualGatewaySpecListenerTlValidationTrustSd({
    required this.secretName,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['secretName'] = secretName;
    return map;
  }

  factory GetVirtualGatewaySpecListenerTlValidationTrustSd.fromMap(
      Map<String, dynamic> map) {
    return GetVirtualGatewaySpecListenerTlValidationTrustSd(
      secretName: map['secretName'] as String,
    );
  }
}
