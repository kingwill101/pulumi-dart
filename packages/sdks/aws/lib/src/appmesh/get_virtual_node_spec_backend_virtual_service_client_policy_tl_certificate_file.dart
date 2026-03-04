// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetVirtualNodeSpecBackendVirtualServiceClientPolicyTlCertificateFile {
  final pulumi.Input<String> certificateChain;
  final pulumi.Input<String> privateKey;

  /// Creates a new [GetVirtualNodeSpecBackendVirtualServiceClientPolicyTlCertificateFile].
  /// [certificateChain] Required.
  /// [privateKey] Required.
  GetVirtualNodeSpecBackendVirtualServiceClientPolicyTlCertificateFile({
    required this.certificateChain,
    required this.privateKey,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'certificateChain': certificateChain,
      'privateKey': privateKey,
    };
  }

  factory GetVirtualNodeSpecBackendVirtualServiceClientPolicyTlCertificateFile.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetVirtualNodeSpecBackendVirtualServiceClientPolicyTlCertificateFile(
      certificateChain: pulumi.Input.fromValue(
        map['certificateChain'] as String,
      ),
      privateKey: pulumi.Input.fromValue(map['privateKey'] as String),
    );
  }
}
