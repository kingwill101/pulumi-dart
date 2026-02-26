// ignore_for_file: unused_element, unnecessary_cast

class GetVirtualGatewaySpecListenerTlCertificateFile {
  final String certificateChain;
  final String privateKey;

  GetVirtualGatewaySpecListenerTlCertificateFile({
    required this.certificateChain,
    required this.privateKey,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['certificateChain'] = certificateChain;
    map['privateKey'] = privateKey;
    return map;
  }

  factory GetVirtualGatewaySpecListenerTlCertificateFile.fromMap(
      Map<String, dynamic> map) {
    return GetVirtualGatewaySpecListenerTlCertificateFile(
      certificateChain: map['certificateChain'] as String,
      privateKey: map['privateKey'] as String,
    );
  }
}
