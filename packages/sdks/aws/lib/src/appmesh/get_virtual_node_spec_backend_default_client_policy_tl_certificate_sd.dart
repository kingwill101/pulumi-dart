// ignore_for_file: unused_element, unnecessary_cast


class GetVirtualNodeSpecBackendDefaultClientPolicyTlCertificateSd {
  final String secretName;

  /// Creates a new [GetVirtualNodeSpecBackendDefaultClientPolicyTlCertificateSd].
  /// [secretName] Required.
  GetVirtualNodeSpecBackendDefaultClientPolicyTlCertificateSd({
    required this.secretName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'secretName': secretName,
    };
  }

  factory GetVirtualNodeSpecBackendDefaultClientPolicyTlCertificateSd.fromMap(Map<String, dynamic> map) {
    return GetVirtualNodeSpecBackendDefaultClientPolicyTlCertificateSd(
      secretName: map['secretName'] as String,
    );
  }
}

