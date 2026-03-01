// ignore_for_file: unused_element, unnecessary_cast


class GetVirtualNodeSpecBackendVirtualServiceClientPolicyTlCertificateFile {
  final String certificateChain;
  final String privateKey;

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

  factory GetVirtualNodeSpecBackendVirtualServiceClientPolicyTlCertificateFile.fromMap(Map<String, dynamic> map) {
    return GetVirtualNodeSpecBackendVirtualServiceClientPolicyTlCertificateFile(
      certificateChain: map['certificateChain'] as String,
      privateKey: map['privateKey'] as String,
    );
  }
}

