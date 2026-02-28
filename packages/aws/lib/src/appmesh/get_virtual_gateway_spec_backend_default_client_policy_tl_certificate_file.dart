// ignore_for_file: unused_element, unnecessary_cast


class GetVirtualGatewaySpecBackendDefaultClientPolicyTlCertificateFile {
  final String certificateChain;
  final String privateKey;

  /// Creates a new [GetVirtualGatewaySpecBackendDefaultClientPolicyTlCertificateFile].
  /// [certificateChain] Required.
  /// [privateKey] Required.
  GetVirtualGatewaySpecBackendDefaultClientPolicyTlCertificateFile({
    required this.certificateChain,
    required this.privateKey,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'certificateChain': certificateChain,
      'privateKey': privateKey,
    };
  }

  factory GetVirtualGatewaySpecBackendDefaultClientPolicyTlCertificateFile.fromMap(Map<String, dynamic> map) {
    return GetVirtualGatewaySpecBackendDefaultClientPolicyTlCertificateFile(
      certificateChain: map['certificateChain'] as String,
      privateKey: map['privateKey'] as String,
    );
  }
}

