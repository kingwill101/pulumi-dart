// ignore_for_file: unused_element, unnecessary_cast

class GetVirtualNodeSpecBackendVirtualServiceClientPolicyTlValidationTrustFile {
  final String certificateChain;

  GetVirtualNodeSpecBackendVirtualServiceClientPolicyTlValidationTrustFile({
    required this.certificateChain,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['certificateChain'] = certificateChain;
    return map;
  }

  factory GetVirtualNodeSpecBackendVirtualServiceClientPolicyTlValidationTrustFile.fromMap(
      Map<String, dynamic> map) {
    return GetVirtualNodeSpecBackendVirtualServiceClientPolicyTlValidationTrustFile(
      certificateChain: map['certificateChain'] as String,
    );
  }
}
