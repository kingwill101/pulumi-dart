// ignore_for_file: unused_element, unnecessary_cast

class GetVirtualNodeSpecListenerTlCertificateSd {
  final String secretName;

  GetVirtualNodeSpecListenerTlCertificateSd({
    required this.secretName,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['secretName'] = secretName;
    return map;
  }

  factory GetVirtualNodeSpecListenerTlCertificateSd.fromMap(
      Map<String, dynamic> map) {
    return GetVirtualNodeSpecListenerTlCertificateSd(
      secretName: map['secretName'] as String,
    );
  }
}
