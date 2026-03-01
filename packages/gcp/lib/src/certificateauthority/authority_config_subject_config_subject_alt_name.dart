// ignore_for_file: unused_element, unnecessary_cast


class AuthorityConfigSubjectConfigSubjectAltName {
  /// Contains only valid, fully-qualified host names.
  final List<String>? dnsNames;
  /// Contains only valid RFC 2822 E-mail addresses.
  final List<String>? emailAddresses;
  /// Contains only valid 32-bit IPv4 addresses or RFC 4291 IPv6 addresses.
  final List<String>? ipAddresses;
  /// Contains only valid RFC 3986 URIs.
  final List<String>? uris;

  /// Creates a new [AuthorityConfigSubjectConfigSubjectAltName].
  /// [dnsNames] Contains only valid, fully-qualified host names.
  /// [emailAddresses] Contains only valid RFC 2822 E-mail addresses.
  /// [ipAddresses] Contains only valid 32-bit IPv4 addresses or RFC 4291 IPv6 addresses.
  /// [uris] Contains only valid RFC 3986 URIs.
  AuthorityConfigSubjectConfigSubjectAltName({
    this.dnsNames,
    this.emailAddresses,
    this.ipAddresses,
    this.uris,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dnsNames': ?dnsNames,
      'emailAddresses': ?emailAddresses,
      'ipAddresses': ?ipAddresses,
      'uris': ?uris,
    };
  }

  factory AuthorityConfigSubjectConfigSubjectAltName.fromMap(Map<String, dynamic> map) {
    return AuthorityConfigSubjectConfigSubjectAltName(
      dnsNames: map['dnsNames'] == null ? null : (map['dnsNames'] as List).cast<String>(),
      emailAddresses: map['emailAddresses'] == null ? null : (map['emailAddresses'] as List).cast<String>(),
      ipAddresses: map['ipAddresses'] == null ? null : (map['ipAddresses'] as List).cast<String>(),
      uris: map['uris'] == null ? null : (map['uris'] as List).cast<String>(),
    );
  }
}

