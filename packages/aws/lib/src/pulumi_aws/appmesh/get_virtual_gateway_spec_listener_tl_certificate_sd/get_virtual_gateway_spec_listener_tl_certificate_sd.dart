// ignore_for_file: unused_element, unnecessary_cast

class GetVirtualGatewaySpecListenerTlCertificateSd {
  final String secretName;

  GetVirtualGatewaySpecListenerTlCertificateSd({
    required this.secretName,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['secretName'] = secretName;
    return map;
  }

  factory GetVirtualGatewaySpecListenerTlCertificateSd.fromMap(
      Map<String, dynamic> map) {
    return GetVirtualGatewaySpecListenerTlCertificateSd(
      secretName: map['secretName'] as String,
    );
  }
}
