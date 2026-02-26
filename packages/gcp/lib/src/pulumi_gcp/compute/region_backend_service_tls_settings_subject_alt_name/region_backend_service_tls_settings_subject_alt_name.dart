// ignore_for_file: unused_element, unnecessary_cast

class RegionBackendServiceTlsSettingsSubjectAltName {
  /// The SAN specified as a DNS Name.
  final String? dnsName;

  /// The SAN specified as a URI.
  final String? uniformResourceIdentifier;

  RegionBackendServiceTlsSettingsSubjectAltName({
    this.dnsName,
    this.uniformResourceIdentifier,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final dnsNameValue = dnsName;
    if (dnsNameValue != null) {
      map['dnsName'] = dnsNameValue;
    }
    final uniformResourceIdentifierValue = uniformResourceIdentifier;
    if (uniformResourceIdentifierValue != null) {
      map['uniformResourceIdentifier'] = uniformResourceIdentifierValue;
    }
    return map;
  }

  factory RegionBackendServiceTlsSettingsSubjectAltName.fromMap(
      Map<String, dynamic> map) {
    return RegionBackendServiceTlsSettingsSubjectAltName(
      dnsName: map['dnsName'] == null ? null : map['dnsName'] as String,
      uniformResourceIdentifier: map['uniformResourceIdentifier'] == null
          ? null
          : map['uniformResourceIdentifier'] as String,
    );
  }
}
