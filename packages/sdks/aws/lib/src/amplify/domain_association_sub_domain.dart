// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DomainAssociationSubDomain {
  /// Branch name setting for the subdomain.
  final pulumi.Input<String> branchName;
  /// DNS record for the subdomain in a space-prefixed and space-delimited format (` CNAME <target>`).
  final pulumi.Input<String>? dnsRecord;
  /// Prefix setting for the subdomain.
  final pulumi.Input<String> prefix;
  /// Verified status of the subdomain.
  final pulumi.Input<bool>? verified;

  /// Creates a new [DomainAssociationSubDomain].
  /// [branchName] Branch name setting for the subdomain.
  /// [dnsRecord] DNS record for the subdomain in a space-prefixed and space-delimited format (` CNAME <target>`).
  /// [prefix] Prefix setting for the subdomain.
  /// [verified] Verified status of the subdomain.
  DomainAssociationSubDomain({
    required this.branchName,
    this.dnsRecord,
    required this.prefix,
    this.verified,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'branchName': branchName,
      'dnsRecord': ?dnsRecord,
      'prefix': prefix,
      'verified': ?verified,
    };
  }

  factory DomainAssociationSubDomain.fromMap(Map<String, dynamic> map) {
    return DomainAssociationSubDomain(
      branchName: (map['branchName'] as String).input(),
      dnsRecord: map['dnsRecord'] == null ? null : (map['dnsRecord'] as String).input(),
      prefix: (map['prefix'] as String).input(),
      verified: map['verified'] == null ? null : (map['verified'] as bool).input(),
    );
  }
}

