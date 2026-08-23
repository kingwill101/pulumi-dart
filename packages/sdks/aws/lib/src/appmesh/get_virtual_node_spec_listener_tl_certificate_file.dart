// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetVirtualNodeSpecListenerTlCertificateFile {
  /// Certificate trust chain for a certificate stored on the file system of the mesh endpoint that the proxy is running on.
  final pulumi.Input<String> certificateChain;
  /// Private key for a certificate stored on the file system of the virtual node that the proxy is running on.
  final pulumi.Input<String> privateKey;

  /// Creates a new [GetVirtualNodeSpecListenerTlCertificateFile].
  /// [certificateChain] Certificate trust chain for a certificate stored on the file system of the mesh endpoint that the proxy is running on.
  /// [privateKey] Private key for a certificate stored on the file system of the virtual node that the proxy is running on.
  const GetVirtualNodeSpecListenerTlCertificateFile({
    required this.certificateChain,
    required this.privateKey,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'certificateChain': certificateChain,
      'privateKey': privateKey,
    };
  }

  factory GetVirtualNodeSpecListenerTlCertificateFile.fromMap(Map<String, dynamic> map) {
    return GetVirtualNodeSpecListenerTlCertificateFile(
      certificateChain: pulumi.Input.fromValue(map['certificateChain'] as String),
      privateKey: pulumi.Input.fromValue(map['privateKey'] as String),
    );
  }
}
