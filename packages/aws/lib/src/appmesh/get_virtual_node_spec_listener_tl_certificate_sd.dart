// ignore_for_file: unused_element, unnecessary_cast

class GetVirtualNodeSpecListenerTlCertificateSd {
  final String secretName;

  /// Creates a new [GetVirtualNodeSpecListenerTlCertificateSd].
  /// [secretName] Required.
  GetVirtualNodeSpecListenerTlCertificateSd({required this.secretName});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'secretName': secretName};
  }

  factory GetVirtualNodeSpecListenerTlCertificateSd.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetVirtualNodeSpecListenerTlCertificateSd(
      secretName: map['secretName'] as String,
    );
  }
}
