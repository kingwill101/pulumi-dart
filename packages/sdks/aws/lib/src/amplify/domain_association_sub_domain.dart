// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DomainAssociationSubDomain {
  /// Branch name setting for the subdomain.
  final pulumi.Input<String> branchName;
  /// DNS record for the subdomain in a space-prefixed and space-delimited format (` CNAME &lt;target&gt;`).
  final pulumi.Input<String>? dnsRecord;
  /// Prefix setting for the subdomain.
  final pulumi.Input<String> prefix;
  /// Verified status of the subdomain.
  final pulumi.Input<bool>? verified;

  /// Creates a new [DomainAssociationSubDomain].
  /// [branchName] Branch name setting for the subdomain.
  /// [dnsRecord] DNS record for the subdomain in a space-prefixed and space-delimited format (` CNAME &lt;target&gt;`).
  /// [prefix] Prefix setting for the subdomain.
  /// [verified] Verified status of the subdomain.
  const DomainAssociationSubDomain({
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
      branchName: pulumi.Input.fromValue(map['branchName'] as String),
      dnsRecord: (() { final guardedValue = map['dnsRecord']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      prefix: pulumi.Input.fromValue(map['prefix'] as String),
      verified: (() { final guardedValue = map['verified']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}
