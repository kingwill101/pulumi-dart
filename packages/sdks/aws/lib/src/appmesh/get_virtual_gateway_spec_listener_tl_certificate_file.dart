// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetVirtualGatewaySpecListenerTlCertificateFile {
  final pulumi.Input<String> certificateChain;
  final pulumi.Input<String> privateKey;

  /// Creates a new [GetVirtualGatewaySpecListenerTlCertificateFile].
  /// [certificateChain] Required.
  /// [privateKey] Required.
  GetVirtualGatewaySpecListenerTlCertificateFile({
    required this.certificateChain,
    required this.privateKey,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'certificateChain': certificateChain,
      'privateKey': privateKey,
    };
  }

  factory GetVirtualGatewaySpecListenerTlCertificateFile.fromMap(Map<String, dynamic> map) {
    return GetVirtualGatewaySpecListenerTlCertificateFile(
      certificateChain: (map['certificateChain'] as String).input(),
      privateKey: (map['privateKey'] as String).input(),
    );
  }
}

