// ignore_for_file: unused_element, unnecessary_cast


class VpnServerConfigurationClientRevokedCertificate {
  /// A name used to uniquely identify this certificate.
  final String name;
  /// The Thumbprint of the Certificate.
  final String thumbprint;

  /// Creates a new [VpnServerConfigurationClientRevokedCertificate].
  /// [name] A name used to uniquely identify this certificate.
  /// [thumbprint] The Thumbprint of the Certificate.
  VpnServerConfigurationClientRevokedCertificate({
    required this.name,
    required this.thumbprint,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'thumbprint': thumbprint,
    };
  }

  factory VpnServerConfigurationClientRevokedCertificate.fromMap(Map<String, dynamic> map) {
    return VpnServerConfigurationClientRevokedCertificate(
      name: map['name'] as String,
      thumbprint: map['thumbprint'] as String,
    );
  }
}

