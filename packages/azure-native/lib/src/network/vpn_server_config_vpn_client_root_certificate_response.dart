// ignore_for_file: unused_element, unnecessary_cast


/// Properties of VPN client root certificate of VpnServerConfiguration.
class VpnServerConfigVpnClientRootCertificateResponse {
  /// The certificate name.
  final String? name;
  /// The certificate public data.
  final String? publicCertData;

  /// Creates a new [VpnServerConfigVpnClientRootCertificateResponse].
  /// [name] The certificate name.
  /// [publicCertData] The certificate public data.
  VpnServerConfigVpnClientRootCertificateResponse({
    this.name,
    this.publicCertData,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'publicCertData': ?publicCertData,
    };
  }

  factory VpnServerConfigVpnClientRootCertificateResponse.fromMap(Map<String, dynamic> map) {
    return VpnServerConfigVpnClientRootCertificateResponse(
      name: map['name'] == null ? null : map['name'] as String,
      publicCertData: map['publicCertData'] == null ? null : map['publicCertData'] as String,
    );
  }
}

