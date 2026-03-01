// ignore_for_file: unused_element, unnecessary_cast


class GetVirtualNodeSpecBackendVirtualServiceClientPolicyTlCertificateSd {
  final String secretName;

  /// Creates a new [GetVirtualNodeSpecBackendVirtualServiceClientPolicyTlCertificateSd].
  /// [secretName] Required.
  GetVirtualNodeSpecBackendVirtualServiceClientPolicyTlCertificateSd({
    required this.secretName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'secretName': secretName,
    };
  }

  factory GetVirtualNodeSpecBackendVirtualServiceClientPolicyTlCertificateSd.fromMap(Map<String, dynamic> map) {
    return GetVirtualNodeSpecBackendVirtualServiceClientPolicyTlCertificateSd(
      secretName: map['secretName'] as String,
    );
  }
}

