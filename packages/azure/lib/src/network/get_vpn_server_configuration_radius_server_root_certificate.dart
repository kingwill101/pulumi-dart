// ignore_for_file: unused_element, unnecessary_cast


class GetVpnServerConfigurationRadiusServerRootCertificate {
  /// The Name of the VPN Server Configuration.
  final String name;
  /// The Public Key Data associated with the Certificate.
  final String publicCertData;

  /// Creates a new [GetVpnServerConfigurationRadiusServerRootCertificate].
  /// [name] The Name of the VPN Server Configuration.
  /// [publicCertData] The Public Key Data associated with the Certificate.
  GetVpnServerConfigurationRadiusServerRootCertificate({
    required this.name,
    required this.publicCertData,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'publicCertData': publicCertData,
    };
  }

  factory GetVpnServerConfigurationRadiusServerRootCertificate.fromMap(Map<String, dynamic> map) {
    return GetVpnServerConfigurationRadiusServerRootCertificate(
      name: map['name'] as String,
      publicCertData: map['publicCertData'] as String,
    );
  }
}

