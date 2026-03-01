// ignore_for_file: unused_element, unnecessary_cast

class GetVirtualNodeSpecListenerTlCertificateAcm {
  final String certificateArn;

  /// Creates a new [GetVirtualNodeSpecListenerTlCertificateAcm].
  /// [certificateArn] Required.
  GetVirtualNodeSpecListenerTlCertificateAcm({required this.certificateArn});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'certificateArn': certificateArn};
  }

  factory GetVirtualNodeSpecListenerTlCertificateAcm.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetVirtualNodeSpecListenerTlCertificateAcm(
      certificateArn: map['certificateArn'] as String,
    );
  }
}
