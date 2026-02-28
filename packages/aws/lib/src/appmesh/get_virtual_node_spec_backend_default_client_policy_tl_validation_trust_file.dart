// ignore_for_file: unused_element, unnecessary_cast


class GetVirtualNodeSpecBackendDefaultClientPolicyTlValidationTrustFile {
  final String certificateChain;

  /// Creates a new [GetVirtualNodeSpecBackendDefaultClientPolicyTlValidationTrustFile].
  /// [certificateChain] Required.
  GetVirtualNodeSpecBackendDefaultClientPolicyTlValidationTrustFile({
    required this.certificateChain,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'certificateChain': certificateChain,
    };
  }

  factory GetVirtualNodeSpecBackendDefaultClientPolicyTlValidationTrustFile.fromMap(Map<String, dynamic> map) {
    return GetVirtualNodeSpecBackendDefaultClientPolicyTlValidationTrustFile(
      certificateChain: map['certificateChain'] as String,
    );
  }
}

