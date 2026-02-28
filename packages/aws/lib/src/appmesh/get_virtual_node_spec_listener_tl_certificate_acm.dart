// ignore_for_file: unused_element, unnecessary_cast

class GetVirtualNodeSpecListenerTlCertificateAcm {
  final String certificateArn;

  /// Creates a new [GetVirtualNodeSpecListenerTlCertificateAcm].
  /// [certificateArn] Required.
  GetVirtualNodeSpecListenerTlCertificateAcm({
    required this.certificateArn,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['certificateArn'] = certificateArn;
    return map;
  }

  factory GetVirtualNodeSpecListenerTlCertificateAcm.fromMap(
      Map<String, dynamic> map) {
    return GetVirtualNodeSpecListenerTlCertificateAcm(
      certificateArn: map['certificateArn'] as String,
    );
  }
}
