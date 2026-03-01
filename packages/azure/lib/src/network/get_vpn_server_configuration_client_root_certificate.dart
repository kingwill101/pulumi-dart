// ignore_for_file: unused_element, unnecessary_cast


class GetVpnServerConfigurationClientRootCertificate {
  /// The Name of the VPN Server Configuration.
  final String name;
  /// The Public Key Data associated with the Certificate.
  final String publicCertData;

  /// Creates a new [GetVpnServerConfigurationClientRootCertificate].
  /// [name] The Name of the VPN Server Configuration.
  /// [publicCertData] The Public Key Data associated with the Certificate.
  GetVpnServerConfigurationClientRootCertificate({
    required this.name,
    required this.publicCertData,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'publicCertData': publicCertData,
    };
  }

  factory GetVpnServerConfigurationClientRootCertificate.fromMap(Map<String, dynamic> map) {
    return GetVpnServerConfigurationClientRootCertificate(
      name: map['name'] as String,
      publicCertData: map['publicCertData'] as String,
    );
  }
}

