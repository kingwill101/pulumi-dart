// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetVirtualNodeSpecListenerTlValidationTrustFile {
  /// Certificate trust chain for a certificate stored on the file system of the mesh endpoint that the proxy is running on.
  final pulumi.Input<String> certificateChain;

  /// Creates a new [GetVirtualNodeSpecListenerTlValidationTrustFile].
  /// [certificateChain] Certificate trust chain for a certificate stored on the file system of the mesh endpoint that the proxy is running on.
  const GetVirtualNodeSpecListenerTlValidationTrustFile({
    required this.certificateChain,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'certificateChain': certificateChain,
    };
  }

  factory GetVirtualNodeSpecListenerTlValidationTrustFile.fromMap(Map<String, dynamic> map) {
    return GetVirtualNodeSpecListenerTlValidationTrustFile(
      certificateChain: pulumi.Input.fromValue(map['certificateChain'] as String),
    );
  }
}
