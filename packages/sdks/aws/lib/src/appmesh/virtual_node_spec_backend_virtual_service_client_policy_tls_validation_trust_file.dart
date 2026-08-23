// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class VirtualNodeSpecBackendVirtualServiceClientPolicyTlsValidationTrustFile {
  /// Certificate trust chain for a certificate stored on the file system of the mesh endpoint that the proxy is running on. Must be between 1 and 255 characters in length.
  final pulumi.Input<String> certificateChain;

  /// Creates a new [VirtualNodeSpecBackendVirtualServiceClientPolicyTlsValidationTrustFile].
  /// [certificateChain] Certificate trust chain for a certificate stored on the file system of the mesh endpoint that the proxy is running on. Must be between 1 and 255 characters in length.
  const VirtualNodeSpecBackendVirtualServiceClientPolicyTlsValidationTrustFile({
    required this.certificateChain,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'certificateChain': certificateChain,
    };
  }

  factory VirtualNodeSpecBackendVirtualServiceClientPolicyTlsValidationTrustFile.fromMap(Map<String, dynamic> map) {
    return VirtualNodeSpecBackendVirtualServiceClientPolicyTlsValidationTrustFile(
      certificateChain: pulumi.Input.fromValue(map['certificateChain'] as String),
    );
  }
}
