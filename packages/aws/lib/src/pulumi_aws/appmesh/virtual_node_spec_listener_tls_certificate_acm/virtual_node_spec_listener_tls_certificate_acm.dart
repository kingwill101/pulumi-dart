// ignore_for_file: unused_element, unnecessary_cast

class VirtualNodeSpecListenerTlsCertificateAcm {
  /// ARN for the certificate.
  final String certificateArn;

  VirtualNodeSpecListenerTlsCertificateAcm({
    required this.certificateArn,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['certificateArn'] = certificateArn;
    return map;
  }

  factory VirtualNodeSpecListenerTlsCertificateAcm.fromMap(
      Map<String, dynamic> map) {
    return VirtualNodeSpecListenerTlsCertificateAcm(
      certificateArn: map['certificateArn'] as String,
    );
  }
}
