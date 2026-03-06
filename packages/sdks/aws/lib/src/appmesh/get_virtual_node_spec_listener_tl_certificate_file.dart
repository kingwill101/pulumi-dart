// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetVirtualNodeSpecListenerTlCertificateFile {
  final pulumi.Input<String> certificateChain;
  final pulumi.Input<String> privateKey;

  /// Creates a new [GetVirtualNodeSpecListenerTlCertificateFile].
  /// [certificateChain] Required.
  /// [privateKey] Required.
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

