// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetVirtualNodeSpecBackendDefaultClientPolicyTlValidationTrustFile {
  /// Certificate trust chain for a certificate stored on the file system of the mesh endpoint that the proxy is running on.
  final pulumi.Input<String> certificateChain;

  /// Creates a new [GetVirtualNodeSpecBackendDefaultClientPolicyTlValidationTrustFile].
  /// [certificateChain] Certificate trust chain for a certificate stored on the file system of the mesh endpoint that the proxy is running on.
  const GetVirtualNodeSpecBackendDefaultClientPolicyTlValidationTrustFile({
    required this.certificateChain,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'certificateChain': certificateChain,
    };
  }

  factory GetVirtualNodeSpecBackendDefaultClientPolicyTlValidationTrustFile.fromMap(Map<String, dynamic> map) {
    return GetVirtualNodeSpecBackendDefaultClientPolicyTlValidationTrustFile(
      certificateChain: pulumi.Input.fromValue(map['certificateChain'] as String),
    );
  }
}
