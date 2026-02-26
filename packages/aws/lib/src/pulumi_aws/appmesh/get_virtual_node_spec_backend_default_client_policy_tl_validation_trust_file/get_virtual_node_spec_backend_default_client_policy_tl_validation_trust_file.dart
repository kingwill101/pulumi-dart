// ignore_for_file: unused_element, unnecessary_cast

class GetVirtualNodeSpecBackendDefaultClientPolicyTlValidationTrustFile {
  final String certificateChain;

  GetVirtualNodeSpecBackendDefaultClientPolicyTlValidationTrustFile({
    required this.certificateChain,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['certificateChain'] = certificateChain;
    return map;
  }

  factory GetVirtualNodeSpecBackendDefaultClientPolicyTlValidationTrustFile.fromMap(
      Map<String, dynamic> map) {
    return GetVirtualNodeSpecBackendDefaultClientPolicyTlValidationTrustFile(
      certificateChain: map['certificateChain'] as String,
    );
  }
}
