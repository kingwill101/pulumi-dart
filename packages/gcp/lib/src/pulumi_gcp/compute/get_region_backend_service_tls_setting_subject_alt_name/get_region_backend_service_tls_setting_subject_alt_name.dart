// ignore_for_file: unused_element, unnecessary_cast

class GetRegionBackendServiceTlsSettingSubjectAltName {
  /// The SAN specified as a DNS Name.
  final String dnsName;

  /// The SAN specified as a URI.
  final String uniformResourceIdentifier;

  GetRegionBackendServiceTlsSettingSubjectAltName({
    required this.dnsName,
    required this.uniformResourceIdentifier,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['dnsName'] = dnsName;
    map['uniformResourceIdentifier'] = uniformResourceIdentifier;
    return map;
  }

  factory GetRegionBackendServiceTlsSettingSubjectAltName.fromMap(
      Map<String, dynamic> map) {
    return GetRegionBackendServiceTlsSettingSubjectAltName(
      dnsName: map['dnsName'] as String,
      uniformResourceIdentifier: map['uniformResourceIdentifier'] as String,
    );
  }
}
