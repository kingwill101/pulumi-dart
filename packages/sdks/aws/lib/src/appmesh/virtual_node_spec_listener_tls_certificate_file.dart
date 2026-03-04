// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class VirtualNodeSpecListenerTlsCertificateFile {
  /// Certificate trust chain for a certificate stored on the file system of the mesh endpoint that the proxy is running on. Must be between 1 and 255 characters in length.
  final pulumi.Input<String> certificateChain;

  /// Private key for a certificate stored on the file system of the virtual node that the proxy is running on. Must be between 1 and 255 characters in length.
  final pulumi.Input<String> privateKey;

  /// Creates a new [VirtualNodeSpecListenerTlsCertificateFile].
  /// [certificateChain] Certificate trust chain for a certificate stored on the file system of the mesh endpoint that the proxy is running on. Must be between 1 and 255 characters in length.
  /// [privateKey] Private key for a certificate stored on the file system of the virtual node that the proxy is running on. Must be between 1 and 255 characters in length.
  VirtualNodeSpecListenerTlsCertificateFile({
    required this.certificateChain,
    required this.privateKey,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'certificateChain': certificateChain,
      'privateKey': privateKey,
    };
  }

  factory VirtualNodeSpecListenerTlsCertificateFile.fromMap(
    Map<String, dynamic> map,
  ) {
    return VirtualNodeSpecListenerTlsCertificateFile(
      certificateChain: pulumi.Input.fromValue(
        map['certificateChain'] as String,
      ),
      privateKey: pulumi.Input.fromValue(map['privateKey'] as String),
    );
  }
}
