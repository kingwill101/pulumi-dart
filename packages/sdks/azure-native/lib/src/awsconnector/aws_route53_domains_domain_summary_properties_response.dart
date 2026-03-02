// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of awsRoute53DomainsDomainSummary
class AwsRoute53DomainsDomainSummaryPropertiesResponse {
  /// <p>Indicates whether the domain is automatically renewed upon expiration.</p>
  final pulumi.Input<bool>? autoRenew;
  /// <p>The name of the domain that the summary information applies to.</p>
  final pulumi.Input<String>? domainName;
  /// <p>Expiration date of the domain in Unix time format and Coordinated Universal Time (UTC).</p>
  final pulumi.Input<String>? expiry;
  /// <p>Indicates whether a domain is locked from unauthorized transfer to another party.</p>
  final pulumi.Input<bool>? transferLock;

  /// Creates a new [AwsRoute53DomainsDomainSummaryPropertiesResponse].
  /// [autoRenew] <p>Indicates whether the domain is automatically renewed upon expiration.</p>
  /// [domainName] <p>The name of the domain that the summary information applies to.</p>
  /// [expiry] <p>Expiration date of the domain in Unix time format and Coordinated Universal Time (UTC).</p>
  /// [transferLock] <p>Indicates whether a domain is locked from unauthorized transfer to another party.</p>
  AwsRoute53DomainsDomainSummaryPropertiesResponse({
    this.autoRenew,
    this.domainName,
    this.expiry,
    this.transferLock,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'autoRenew': ?autoRenew,
      'domainName': ?domainName,
      'expiry': ?expiry,
      'transferLock': ?transferLock,
    };
  }

  factory AwsRoute53DomainsDomainSummaryPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return AwsRoute53DomainsDomainSummaryPropertiesResponse(
      autoRenew: map['autoRenew'] == null ? null : (map['autoRenew']! as bool).input(),
      domainName: map['domainName'] == null ? null : (map['domainName']! as String).input(),
      expiry: map['expiry'] == null ? null : (map['expiry']! as String).input(),
      transferLock: map['transferLock'] == null ? null : (map['transferLock']! as bool).input(),
    );
  }
}

