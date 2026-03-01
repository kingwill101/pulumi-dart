// ignore_for_file: unused_element, unnecessary_cast

class GetVirtualGatewaySpecBackendDefaultClientPolicyTlCertificateSd {
  final String secretName;

  /// Creates a new [GetVirtualGatewaySpecBackendDefaultClientPolicyTlCertificateSd].
  /// [secretName] Required.
  GetVirtualGatewaySpecBackendDefaultClientPolicyTlCertificateSd({
    required this.secretName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'secretName': secretName};
  }

  factory GetVirtualGatewaySpecBackendDefaultClientPolicyTlCertificateSd.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetVirtualGatewaySpecBackendDefaultClientPolicyTlCertificateSd(
      secretName: map['secretName'] as String,
    );
  }
}
