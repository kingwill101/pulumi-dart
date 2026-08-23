// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class VirtualNodeSpecBackendVirtualServiceClientPolicyTlsCertificateFile {
  /// Certificate trust chain for a certificate stored on the file system of the mesh endpoint that the proxy is running on. Must be between 1 and 255 characters in length.
  final pulumi.Input<String> certificateChain;
  /// Private key for a certificate stored on the file system of the virtual node that the proxy is running on. Must be between 1 and 255 characters in length.
  final pulumi.Input<String> privateKey;

  /// Creates a new [VirtualNodeSpecBackendVirtualServiceClientPolicyTlsCertificateFile].
  /// [certificateChain] Certificate trust chain for a certificate stored on the file system of the mesh endpoint that the proxy is running on. Must be between 1 and 255 characters in length.
  /// [privateKey] Private key for a certificate stored on the file system of the virtual node that the proxy is running on. Must be between 1 and 255 characters in length.
  const VirtualNodeSpecBackendVirtualServiceClientPolicyTlsCertificateFile({
    required this.certificateChain,
    required this.privateKey,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'certificateChain': certificateChain,
      'privateKey': privateKey,
    };
  }

  factory VirtualNodeSpecBackendVirtualServiceClientPolicyTlsCertificateFile.fromMap(Map<String, dynamic> map) {
    return VirtualNodeSpecBackendVirtualServiceClientPolicyTlsCertificateFile(
      certificateChain: pulumi.Input.fromValue(map['certificateChain'] as String),
      privateKey: pulumi.Input.fromValue(map['privateKey'] as String),
    );
  }
}
