// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetVirtualGatewaySpecBackendDefaultClientPolicyTlCertificateFile {
  final pulumi.Input<String> certificateChain;
  final pulumi.Input<String> privateKey;

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
      certificateChain: (map['certificateChain'] as String).input(),
      privateKey: (map['privateKey'] as String).input(),
    );
  }
}

