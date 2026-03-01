// ignore_for_file: unused_element, unnecessary_cast


class GetVirtualNodeSpecBackendVirtualServiceClientPolicyTlValidationTrustFile {
  final String certificateChain;

  /// Creates a new [GetVirtualNodeSpecBackendVirtualServiceClientPolicyTlValidationTrustFile].
  /// [certificateChain] Required.
  GetVirtualNodeSpecBackendVirtualServiceClientPolicyTlValidationTrustFile({
    required this.certificateChain,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'certificateChain': certificateChain,
    };
  }

  factory GetVirtualNodeSpecBackendVirtualServiceClientPolicyTlValidationTrustFile.fromMap(Map<String, dynamic> map) {
    return GetVirtualNodeSpecBackendVirtualServiceClientPolicyTlValidationTrustFile(
      certificateChain: map['certificateChain'] as String,
    );
  }
}

