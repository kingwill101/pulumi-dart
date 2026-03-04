// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of awsRoute53DomainsDomainSummary
class AwsRoute53DomainsDomainSummaryProperties {
  /// &lt;p&gt;Indicates whether the domain is automatically renewed upon expiration.&lt;/p&gt;
  final pulumi.Input<bool>? autoRenew;

  /// &lt;p&gt;The name of the domain that the summary information applies to.&lt;/p&gt;
  final pulumi.Input<String>? domainName;

  /// &lt;p&gt;Expiration date of the domain in Unix time format and Coordinated Universal Time (UTC).&lt;/p&gt;
  final pulumi.Input<String>? expiry;

  /// &lt;p&gt;Indicates whether a domain is locked from unauthorized transfer to another party.&lt;/p&gt;
  final pulumi.Input<bool>? transferLock;

  /// Creates a new [AwsRoute53DomainsDomainSummaryProperties].
  /// [autoRenew] &lt;p&gt;Indicates whether the domain is automatically renewed upon expiration.&lt;/p&gt;
  /// [domainName] &lt;p&gt;The name of the domain that the summary information applies to.&lt;/p&gt;
  /// [expiry] &lt;p&gt;Expiration date of the domain in Unix time format and Coordinated Universal Time (UTC).&lt;/p&gt;
  /// [transferLock] &lt;p&gt;Indicates whether a domain is locked from unauthorized transfer to another party.&lt;/p&gt;
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

  factory AwsRoute53DomainsDomainSummaryProperties.fromMap(
    Map<String, dynamic> map,
  ) {
    return AwsRoute53DomainsDomainSummaryProperties(
      autoRenew: (() {
        final guardedValue = map['autoRenew'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      domainName: (() {
        final guardedValue = map['domainName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      expiry: (() {
        final guardedValue = map['expiry'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      transferLock: (() {
        final guardedValue = map['transferLock'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
    );
  }
}
