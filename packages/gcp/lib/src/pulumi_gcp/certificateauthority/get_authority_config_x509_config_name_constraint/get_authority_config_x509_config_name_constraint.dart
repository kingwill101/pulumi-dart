// ignore_for_file: unused_element, unnecessary_cast

class GetAuthorityConfigX509ConfigNameConstraint {
  /// Indicates whether or not the name constraints are marked critical.
  final bool critical;

  /// Contains excluded DNS names. Any DNS name that can be
  /// constructed by simply adding zero or more labels to
  /// the left-hand side of the name satisfies the name constraint.
  /// For example, 'example.com', 'www.example.com', 'www.sub.example.com'
  /// would satisfy 'example.com' while 'example1.com' does not.
  final List<String> excludedDnsNames;

  /// Contains the excluded email addresses. The value can be a particular
  /// email address, a hostname to indicate all email addresses on that host or
  /// a domain with a leading period (e.g. '.example.com') to indicate
  /// all email addresses in that domain.
  final List<String> excludedEmailAddresses;

  /// Contains the excluded IP ranges. For IPv4 addresses, the ranges
  /// are expressed using CIDR notation as specified in RFC 4632.
  /// For IPv6 addresses, the ranges are expressed in similar encoding as IPv4
  /// addresses.
  final List<String> excludedIpRanges;

  /// Contains the excluded URIs that apply to the host part of the name.
  /// The value can be a hostname or a domain with a
  /// leading period (like '.example.com')
  final List<String> excludedUris;

  /// Contains permitted DNS names. Any DNS name that can be
  /// constructed by simply adding zero or more labels to
  /// the left-hand side of the name satisfies the name constraint.
  /// For example, 'example.com', 'www.example.com', 'www.sub.example.com'
  /// would satisfy 'example.com' while 'example1.com' does not.
  final List<String> permittedDnsNames;

  /// Contains the permitted email addresses. The value can be a particular
  /// email address, a hostname to indicate all email addresses on that host or
  /// a domain with a leading period (e.g. '.example.com') to indicate
  /// all email addresses in that domain.
  final List<String> permittedEmailAddresses;

  /// Contains the permitted IP ranges. For IPv4 addresses, the ranges
  /// are expressed using CIDR notation as specified in RFC 4632.
  /// For IPv6 addresses, the ranges are expressed in similar encoding as IPv4
  /// addresses.
  final List<String> permittedIpRanges;

  /// Contains the permitted URIs that apply to the host part of the name.
  /// The value can be a hostname or a domain with a
  /// leading period (like '.example.com')
  final List<String> permittedUris;

  GetAuthorityConfigX509ConfigNameConstraint({
    required this.critical,
    required this.excludedDnsNames,
    required this.excludedEmailAddresses,
    required this.excludedIpRanges,
    required this.excludedUris,
    required this.permittedDnsNames,
    required this.permittedEmailAddresses,
    required this.permittedIpRanges,
    required this.permittedUris,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['critical'] = critical;
    map['excludedDnsNames'] = excludedDnsNames;
    map['excludedEmailAddresses'] = excludedEmailAddresses;
    map['excludedIpRanges'] = excludedIpRanges;
    map['excludedUris'] = excludedUris;
    map['permittedDnsNames'] = permittedDnsNames;
    map['permittedEmailAddresses'] = permittedEmailAddresses;
    map['permittedIpRanges'] = permittedIpRanges;
    map['permittedUris'] = permittedUris;
    return map;
  }

  factory GetAuthorityConfigX509ConfigNameConstraint.fromMap(
      Map<String, dynamic> map) {
    return GetAuthorityConfigX509ConfigNameConstraint(
      critical: map['critical'] as bool,
      excludedDnsNames: (map['excludedDnsNames'] as List).cast<String>(),
      excludedEmailAddresses:
          (map['excludedEmailAddresses'] as List).cast<String>(),
      excludedIpRanges: (map['excludedIpRanges'] as List).cast<String>(),
      excludedUris: (map['excludedUris'] as List).cast<String>(),
      permittedDnsNames: (map['permittedDnsNames'] as List).cast<String>(),
      permittedEmailAddresses:
          (map['permittedEmailAddresses'] as List).cast<String>(),
      permittedIpRanges: (map['permittedIpRanges'] as List).cast<String>(),
      permittedUris: (map['permittedUris'] as List).cast<String>(),
    );
  }
}
