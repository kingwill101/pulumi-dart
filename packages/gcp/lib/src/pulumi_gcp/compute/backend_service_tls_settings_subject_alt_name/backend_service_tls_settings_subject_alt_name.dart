// ignore_for_file: unused_element, unnecessary_cast

class BackendServiceTlsSettingsSubjectAltName {
  /// The SAN specified as a DNS Name.
  final String? dnsName;

  /// The SAN specified as a URI.
  final String? uniformResourceIdentifier;

  BackendServiceTlsSettingsSubjectAltName({
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

  factory BackendServiceTlsSettingsSubjectAltName.fromMap(
      Map<String, dynamic> map) {
    return BackendServiceTlsSettingsSubjectAltName(
      dnsName: map['dnsName'] == null ? null : map['dnsName'] as String,
      uniformResourceIdentifier: map['uniformResourceIdentifier'] == null
          ? null
          : map['uniformResourceIdentifier'] as String,
    );
  }
}
