// ignore_for_file: unused_element, unnecessary_cast

class CertificateConfigSubjectConfigSubjectAltName {
  /// Contains only valid, fully-qualified host names.
  final List<String>? dnsNames;

  /// Contains only valid RFC 2822 E-mail addresses.
  final List<String>? emailAddresses;

  /// Contains only valid 32-bit IPv4 addresses or RFC 4291 IPv6 addresses.
  final List<String>? ipAddresses;

  /// Contains only valid RFC 3986 URIs.
  final List<String>? uris;

  CertificateConfigSubjectConfigSubjectAltName({
    this.dnsNames,
    this.emailAddresses,
    this.ipAddresses,
    this.uris,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final dnsNamesValue = dnsNames;
    if (dnsNamesValue != null) {
      map['dnsNames'] = dnsNamesValue;
    }
    final emailAddressesValue = emailAddresses;
    if (emailAddressesValue != null) {
      map['emailAddresses'] = emailAddressesValue;
    }
    final ipAddressesValue = ipAddresses;
    if (ipAddressesValue != null) {
      map['ipAddresses'] = ipAddressesValue;
    }
    final urisValue = uris;
    if (urisValue != null) {
      map['uris'] = urisValue;
    }
    return map;
  }

  factory CertificateConfigSubjectConfigSubjectAltName.fromMap(
      Map<String, dynamic> map) {
    return CertificateConfigSubjectConfigSubjectAltName(
      dnsNames: map['dnsNames'] == null
          ? null
          : (map['dnsNames'] as List).cast<String>(),
      emailAddresses: map['emailAddresses'] == null
          ? null
          : (map['emailAddresses'] as List).cast<String>(),
      ipAddresses: map['ipAddresses'] == null
          ? null
          : (map['ipAddresses'] as List).cast<String>(),
      uris: map['uris'] == null ? null : (map['uris'] as List).cast<String>(),
    );
  }
}
