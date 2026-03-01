// ignore_for_file: unused_element, unnecessary_cast


class VirtualNodeSpecBackendDefaultsClientPolicyTlsValidationTrustFile {
  /// Certificate trust chain for a certificate stored on the file system of the mesh endpoint that the proxy is running on. Must be between 1 and 255 characters in length.
  final String certificateChain;

  /// Creates a new [VirtualNodeSpecBackendDefaultsClientPolicyTlsValidationTrustFile].
  /// [certificateChain] Certificate trust chain for a certificate stored on the file system of the mesh endpoint that the proxy is running on. Must be between 1 and 255 characters in length.
  VirtualNodeSpecBackendDefaultsClientPolicyTlsValidationTrustFile({
    required this.certificateChain,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'certificateChain': certificateChain,
    };
  }

  factory VirtualNodeSpecBackendDefaultsClientPolicyTlsValidationTrustFile.fromMap(Map<String, dynamic> map) {
    return VirtualNodeSpecBackendDefaultsClientPolicyTlsValidationTrustFile(
      certificateChain: map['certificateChain'] as String,
    );
  }
}

