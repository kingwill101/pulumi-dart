// ignore_for_file: unused_element, unnecessary_cast

class DomainAssociationSubDomain {
  /// Branch name setting for the subdomain.
  final String branchName;

  /// DNS record for the subdomain in a space-prefixed and space-delimited format (` CNAME <target>`).
  final String? dnsRecord;

  /// Prefix setting for the subdomain.
  final String prefix;

  /// Verified status of the subdomain.
  final bool? verified;

  DomainAssociationSubDomain({
    required this.branchName,
    this.dnsRecord,
    required this.prefix,
    this.verified,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['branchName'] = branchName;
    final dnsRecordValue = dnsRecord;
    if (dnsRecordValue != null) {
      map['dnsRecord'] = dnsRecordValue;
    }
    map['prefix'] = prefix;
    final verifiedValue = verified;
    if (verifiedValue != null) {
      map['verified'] = verifiedValue;
    }
    return map;
  }

  factory DomainAssociationSubDomain.fromMap(Map<String, dynamic> map) {
    return DomainAssociationSubDomain(
      branchName: map['branchName'] as String,
      dnsRecord: map['dnsRecord'] == null ? null : map['dnsRecord'] as String,
      prefix: map['prefix'] as String,
      verified: map['verified'] == null ? null : map['verified'] as bool,
    );
  }
}
