// ignore_for_file: unused_element, unnecessary_cast


class GetVirtualGatewaySpecListenerTlCertificateAcm {
  final String certificateArn;

  /// Creates a new [GetVirtualGatewaySpecListenerTlCertificateAcm].
  /// [certificateArn] Required.
  GetVirtualGatewaySpecListenerTlCertificateAcm({
    required this.certificateArn,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'certificateArn': certificateArn,
    };
  }

  factory GetVirtualGatewaySpecListenerTlCertificateAcm.fromMap(Map<String, dynamic> map) {
    return GetVirtualGatewaySpecListenerTlCertificateAcm(
      certificateArn: map['certificateArn'] as String,
    );
  }
}

