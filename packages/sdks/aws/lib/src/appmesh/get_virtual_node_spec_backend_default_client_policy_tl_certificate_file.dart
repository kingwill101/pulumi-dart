// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetVirtualNodeSpecBackendDefaultClientPolicyTlCertificateFile {
  final pulumi.Input<String> certificateChain;
  final pulumi.Input<String> privateKey;

  /// Creates a new [GetVirtualNodeSpecBackendDefaultClientPolicyTlCertificateFile].
  /// [certificateChain] Required.
  /// [privateKey] Required.
  GetVirtualNodeSpecBackendDefaultClientPolicyTlCertificateFile({
    required this.certificateChain,
    required this.privateKey,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'certificateChain': certificateChain,
      'privateKey': privateKey,
    };
  }

  factory GetVirtualNodeSpecBackendDefaultClientPolicyTlCertificateFile.fromMap(Map<String, dynamic> map) {
    return GetVirtualNodeSpecBackendDefaultClientPolicyTlCertificateFile(
      certificateChain: (map['certificateChain'] as String).input(),
      privateKey: (map['privateKey'] as String).input(),
    );
  }
}

