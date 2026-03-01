// ignore_for_file: unused_element, unnecessary_cast

class VirtualNodeSpecBackendVirtualServiceClientPolicyTlsValidationTrustFile {
  /// Certificate trust chain for a certificate stored on the file system of the mesh endpoint that the proxy is running on. Must be between 1 and 255 characters in length.
  final String certificateChain;

  /// Creates a new [VirtualNodeSpecBackendVirtualServiceClientPolicyTlsValidationTrustFile].
  /// [certificateChain] Certificate trust chain for a certificate stored on the file system of the mesh endpoint that the proxy is running on. Must be between 1 and 255 characters in length.
  VirtualNodeSpecBackendVirtualServiceClientPolicyTlsValidationTrustFile({
    required this.certificateChain,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'certificateChain': certificateChain};
  }

  factory VirtualNodeSpecBackendVirtualServiceClientPolicyTlsValidationTrustFile.fromMap(
    Map<String, dynamic> map,
  ) {
    return VirtualNodeSpecBackendVirtualServiceClientPolicyTlsValidationTrustFile(
      certificateChain: map['certificateChain'] as String,
    );
  }
}
