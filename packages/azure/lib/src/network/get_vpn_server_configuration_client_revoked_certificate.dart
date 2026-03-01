// ignore_for_file: unused_element, unnecessary_cast


class GetVpnServerConfigurationClientRevokedCertificate {
  /// The Name of the VPN Server Configuration.
  final String name;
  /// The Thumbprint of the Certificate.
  final String thumbprint;

  /// Creates a new [GetVpnServerConfigurationClientRevokedCertificate].
  /// [name] The Name of the VPN Server Configuration.
  /// [thumbprint] The Thumbprint of the Certificate.
  GetVpnServerConfigurationClientRevokedCertificate({
    required this.name,
    required this.thumbprint,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'thumbprint': thumbprint,
    };
  }

  factory GetVpnServerConfigurationClientRevokedCertificate.fromMap(Map<String, dynamic> map) {
    return GetVpnServerConfigurationClientRevokedCertificate(
      name: map['name'] as String,
      thumbprint: map['thumbprint'] as String,
    );
  }
}

