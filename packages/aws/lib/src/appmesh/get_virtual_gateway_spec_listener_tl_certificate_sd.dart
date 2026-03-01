// ignore_for_file: unused_element, unnecessary_cast

class GetVirtualGatewaySpecListenerTlCertificateSd {
  final String secretName;

  /// Creates a new [GetVirtualGatewaySpecListenerTlCertificateSd].
  /// [secretName] Required.
  GetVirtualGatewaySpecListenerTlCertificateSd({required this.secretName});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'secretName': secretName};
  }

  factory GetVirtualGatewaySpecListenerTlCertificateSd.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetVirtualGatewaySpecListenerTlCertificateSd(
      secretName: map['secretName'] as String,
    );
  }
}
