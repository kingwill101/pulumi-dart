// ignore_for_file: unused_element, unnecessary_cast


class VirtualNodeSpecListenerTlsCertificateAcm {
  /// ARN for the certificate.
  final String certificateArn;

  /// Creates a new [VirtualNodeSpecListenerTlsCertificateAcm].
  /// [certificateArn] ARN for the certificate.
  VirtualNodeSpecListenerTlsCertificateAcm({
    required this.certificateArn,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'certificateArn': certificateArn,
    };
  }

  factory VirtualNodeSpecListenerTlsCertificateAcm.fromMap(Map<String, dynamic> map) {
    return VirtualNodeSpecListenerTlsCertificateAcm(
      certificateArn: map['certificateArn'] as String,
    );
  }
}

