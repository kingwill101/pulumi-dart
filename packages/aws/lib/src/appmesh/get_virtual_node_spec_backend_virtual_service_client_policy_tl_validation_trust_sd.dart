// ignore_for_file: unused_element, unnecessary_cast

class GetVirtualNodeSpecBackendVirtualServiceClientPolicyTlValidationTrustSd {
  final String secretName;

  /// Creates a new [GetVirtualNodeSpecBackendVirtualServiceClientPolicyTlValidationTrustSd].
  /// [secretName] Required.
  GetVirtualNodeSpecBackendVirtualServiceClientPolicyTlValidationTrustSd({
    required this.secretName,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['secretName'] = secretName;
    return map;
  }

  factory GetVirtualNodeSpecBackendVirtualServiceClientPolicyTlValidationTrustSd.fromMap(
      Map<String, dynamic> map) {
    return GetVirtualNodeSpecBackendVirtualServiceClientPolicyTlValidationTrustSd(
      secretName: map['secretName'] as String,
    );
  }
}
