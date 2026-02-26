// ignore_for_file: unused_element, unnecessary_cast

class GetVirtualGatewaySpecBackendDefaultClientPolicyTlCertificateFile {
  final String certificateChain;
  final String privateKey;

  GetVirtualGatewaySpecBackendDefaultClientPolicyTlCertificateFile({
    required this.certificateChain,
    required this.privateKey,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['certificateChain'] = certificateChain;
    map['privateKey'] = privateKey;
    return map;
  }

  factory GetVirtualGatewaySpecBackendDefaultClientPolicyTlCertificateFile.fromMap(
      Map<String, dynamic> map) {
    return GetVirtualGatewaySpecBackendDefaultClientPolicyTlCertificateFile(
      certificateChain: map['certificateChain'] as String,
      privateKey: map['privateKey'] as String,
    );
  }
}
