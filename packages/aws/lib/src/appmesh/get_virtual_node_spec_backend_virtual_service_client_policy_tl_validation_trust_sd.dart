// ignore_for_file: unused_element, unnecessary_cast


class GetVirtualNodeSpecBackendVirtualServiceClientPolicyTlValidationTrustSd {
  final String secretName;

  /// Creates a new [GetVirtualNodeSpecBackendVirtualServiceClientPolicyTlValidationTrustSd].
  /// [secretName] Required.
  GetVirtualNodeSpecBackendVirtualServiceClientPolicyTlValidationTrustSd({
    required this.secretName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'secretName': secretName,
    };
  }

  factory GetVirtualNodeSpecBackendVirtualServiceClientPolicyTlValidationTrustSd.fromMap(Map<String, dynamic> map) {
    return GetVirtualNodeSpecBackendVirtualServiceClientPolicyTlValidationTrustSd(
      secretName: map['secretName'] as String,
    );
  }
}

