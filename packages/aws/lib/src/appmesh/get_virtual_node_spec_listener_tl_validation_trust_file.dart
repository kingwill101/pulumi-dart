// ignore_for_file: unused_element, unnecessary_cast

class GetVirtualNodeSpecListenerTlValidationTrustFile {
  final String certificateChain;

  /// Creates a new [GetVirtualNodeSpecListenerTlValidationTrustFile].
  /// [certificateChain] Required.
  GetVirtualNodeSpecListenerTlValidationTrustFile({
    required this.certificateChain,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['certificateChain'] = certificateChain;
    return map;
  }

  factory GetVirtualNodeSpecListenerTlValidationTrustFile.fromMap(
      Map<String, dynamic> map) {
    return GetVirtualNodeSpecListenerTlValidationTrustFile(
      certificateChain: map['certificateChain'] as String,
    );
  }
}
