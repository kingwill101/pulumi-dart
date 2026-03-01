// ignore_for_file: unused_element, unnecessary_cast


/// Definition of awsRoute53DomainsDomainSummary
class AwsRoute53DomainsDomainSummaryProperties {
  /// <p>Indicates whether the domain is automatically renewed upon expiration.</p>
  final bool? autoRenew;
  /// <p>The name of the domain that the summary information applies to.</p>
  final String? domainName;
  /// <p>Expiration date of the domain in Unix time format and Coordinated Universal Time (UTC).</p>
  final String? expiry;
  /// <p>Indicates whether a domain is locked from unauthorized transfer to another party.</p>
  final bool? transferLock;

  /// Creates a new [AwsRoute53DomainsDomainSummaryProperties].
  /// [autoRenew] <p>Indicates whether the domain is automatically renewed upon expiration.</p>
  /// [domainName] <p>The name of the domain that the summary information applies to.</p>
  /// [expiry] <p>Expiration date of the domain in Unix time format and Coordinated Universal Time (UTC).</p>
  /// [transferLock] <p>Indicates whether a domain is locked from unauthorized transfer to another party.</p>
  AwsRoute53DomainsDomainSummaryProperties({
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

  factory AwsRoute53DomainsDomainSummaryProperties.fromMap(Map<String, dynamic> map) {
    return AwsRoute53DomainsDomainSummaryProperties(
      autoRenew: map['autoRenew'] == null ? null : map['autoRenew'] as bool,
      domainName: map['domainName'] == null ? null : map['domainName'] as String,
      expiry: map['expiry'] == null ? null : map['expiry'] as String,
      transferLock: map['transferLock'] == null ? null : map['transferLock'] as bool,
    );
  }
}

