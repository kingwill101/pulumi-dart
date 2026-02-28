// ignore_for_file: unused_element, unnecessary_cast

class GetVirtualNodeSpecBackendDefaultClientPolicyTlValidationTrustSd {
  final String secretName;

  /// Creates a new [GetVirtualNodeSpecBackendDefaultClientPolicyTlValidationTrustSd].
  /// [secretName] Required.
  GetVirtualNodeSpecBackendDefaultClientPolicyTlValidationTrustSd({
    required this.secretName,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['secretName'] = secretName;
    return map;
  }

  factory GetVirtualNodeSpecBackendDefaultClientPolicyTlValidationTrustSd.fromMap(
      Map<String, dynamic> map) {
    return GetVirtualNodeSpecBackendDefaultClientPolicyTlValidationTrustSd(
      secretName: map['secretName'] as String,
    );
  }
}
