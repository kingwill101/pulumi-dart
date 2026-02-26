// ignore_for_file: unused_element, unnecessary_cast

class VirtualNodeSpecListenerTlsValidationTrustFile {
  /// Certificate trust chain for a certificate stored on the file system of the mesh endpoint that the proxy is running on. Must be between 1 and 255 characters in length.
  final String certificateChain;

  VirtualNodeSpecListenerTlsValidationTrustFile({
    required this.certificateChain,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['certificateChain'] = certificateChain;
    return map;
  }

  factory VirtualNodeSpecListenerTlsValidationTrustFile.fromMap(
      Map<String, dynamic> map) {
    return VirtualNodeSpecListenerTlsValidationTrustFile(
      certificateChain: map['certificateChain'] as String,
    );
  }
}
