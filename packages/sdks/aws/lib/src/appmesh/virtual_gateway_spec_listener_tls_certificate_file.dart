// ignore_for_file: unused_element, unnecessary_cast


class VirtualGatewaySpecListenerTlsCertificateFile {
  /// Certificate trust chain for a certificate stored on the file system of the mesh endpoint that the proxy is running on. Must be between 1 and 255 characters in length.
  final String certificateChain;
  /// Private key for a certificate stored on the file system of the mesh endpoint that the proxy is running on. Must be between 1 and 255 characters in length.
  final String privateKey;

  /// Creates a new [VirtualGatewaySpecListenerTlsCertificateFile].
  /// [certificateChain] Certificate trust chain for a certificate stored on the file system of the mesh endpoint that the proxy is running on. Must be between 1 and 255 characters in length.
  /// [privateKey] Private key for a certificate stored on the file system of the mesh endpoint that the proxy is running on. Must be between 1 and 255 characters in length.
  VirtualGatewaySpecListenerTlsCertificateFile({
    required this.certificateChain,
    required this.privateKey,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'certificateChain': certificateChain,
      'privateKey': privateKey,
    };
  }

  factory VirtualGatewaySpecListenerTlsCertificateFile.fromMap(Map<String, dynamic> map) {
    return VirtualGatewaySpecListenerTlsCertificateFile(
      certificateChain: map['certificateChain'] as String,
      privateKey: map['privateKey'] as String,
    );
  }
}

