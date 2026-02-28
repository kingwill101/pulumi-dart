// ignore_for_file: unused_element, unnecessary_cast

class GetVirtualGatewaySpecListenerTlCertificateAcm {
  final String certificateArn;

  /// Creates a new [GetVirtualGatewaySpecListenerTlCertificateAcm].
  /// [certificateArn] Required.
  GetVirtualGatewaySpecListenerTlCertificateAcm({
    required this.certificateArn,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['certificateArn'] = certificateArn;
    return map;
  }

  factory GetVirtualGatewaySpecListenerTlCertificateAcm.fromMap(
      Map<String, dynamic> map) {
    return GetVirtualGatewaySpecListenerTlCertificateAcm(
      certificateArn: map['certificateArn'] as String,
    );
  }
}
