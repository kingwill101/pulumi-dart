// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class VirtualGatewaySpecListenerTlsValidationTrustFile {
  /// Certificate trust chain for a certificate stored on the file system of the mesh endpoint that the proxy is running on. Must be between 1 and 255 characters in length.
  final pulumi.Input<String> certificateChain;

  /// Creates a new [VirtualGatewaySpecListenerTlsValidationTrustFile].
  /// [certificateChain] Certificate trust chain for a certificate stored on the file system of the mesh endpoint that the proxy is running on. Must be between 1 and 255 characters in length.
  const VirtualGatewaySpecListenerTlsValidationTrustFile({
    required this.certificateChain,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'certificateChain': certificateChain,
    };
  }

  factory VirtualGatewaySpecListenerTlsValidationTrustFile.fromMap(Map<String, dynamic> map) {
    return VirtualGatewaySpecListenerTlsValidationTrustFile(
      certificateChain: pulumi.Input.fromValue(map['certificateChain'] as String),
    );
  }
}
