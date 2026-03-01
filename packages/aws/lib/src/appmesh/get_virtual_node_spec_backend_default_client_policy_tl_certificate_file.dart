// ignore_for_file: unused_element, unnecessary_cast

class GetVirtualNodeSpecBackendDefaultClientPolicyTlCertificateFile {
  final String certificateChain;
  final String privateKey;

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

  factory GetVirtualNodeSpecBackendDefaultClientPolicyTlCertificateFile.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetVirtualNodeSpecBackendDefaultClientPolicyTlCertificateFile(
      certificateChain: map['certificateChain'] as String,
      privateKey: map['privateKey'] as String,
    );
  }
}
