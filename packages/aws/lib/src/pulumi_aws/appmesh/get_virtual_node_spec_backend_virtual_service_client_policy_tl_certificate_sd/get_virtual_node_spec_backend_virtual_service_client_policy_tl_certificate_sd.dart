// ignore_for_file: unused_element, unnecessary_cast

class GetVirtualNodeSpecBackendVirtualServiceClientPolicyTlCertificateSd {
  final String secretName;

  GetVirtualNodeSpecBackendVirtualServiceClientPolicyTlCertificateSd({
    required this.secretName,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['secretName'] = secretName;
    return map;
  }

  factory GetVirtualNodeSpecBackendVirtualServiceClientPolicyTlCertificateSd.fromMap(
      Map<String, dynamic> map) {
    return GetVirtualNodeSpecBackendVirtualServiceClientPolicyTlCertificateSd(
      secretName: map['secretName'] as String,
    );
  }
}
