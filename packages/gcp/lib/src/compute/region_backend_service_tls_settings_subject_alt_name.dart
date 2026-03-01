// ignore_for_file: unused_element, unnecessary_cast

class RegionBackendServiceTlsSettingsSubjectAltName {
  /// The SAN specified as a DNS Name.
  final String? dnsName;

  /// The SAN specified as a URI.
  final String? uniformResourceIdentifier;

  /// Creates a new [RegionBackendServiceTlsSettingsSubjectAltName].
  /// [dnsName] The SAN specified as a DNS Name.
  /// [uniformResourceIdentifier] The SAN specified as a URI.
  RegionBackendServiceTlsSettingsSubjectAltName({
    this.dnsName,
    this.uniformResourceIdentifier,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dnsName': ?dnsName,
      'uniformResourceIdentifier': ?uniformResourceIdentifier,
    };
  }

  factory RegionBackendServiceTlsSettingsSubjectAltName.fromMap(
    Map<String, dynamic> map,
  ) {
    return RegionBackendServiceTlsSettingsSubjectAltName(
      dnsName: map['dnsName'] == null ? null : map['dnsName'] as String,
      uniformResourceIdentifier: map['uniformResourceIdentifier'] == null
          ? null
          : map['uniformResourceIdentifier'] as String,
    );
  }
}
