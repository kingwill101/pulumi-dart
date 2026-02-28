// ignore_for_file: unused_element, unnecessary_cast

class GetVirtualNodeSpecBackendDefaultClientPolicyTlCertificateSd {
  final String secretName;

  /// Creates a new [GetVirtualNodeSpecBackendDefaultClientPolicyTlCertificateSd].
  /// [secretName] Required.
  GetVirtualNodeSpecBackendDefaultClientPolicyTlCertificateSd({
    required this.secretName,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['secretName'] = secretName;
    return map;
  }

  factory GetVirtualNodeSpecBackendDefaultClientPolicyTlCertificateSd.fromMap(
      Map<String, dynamic> map) {
    return GetVirtualNodeSpecBackendDefaultClientPolicyTlCertificateSd(
      secretName: map['secretName'] as String,
    );
  }
}
