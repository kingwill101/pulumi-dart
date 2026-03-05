// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ServiceNetworkVpcAssociationDnsOptions {
  /// Preference for which private domains have a private hosted zone created for and associated with the specified VPC. Only supported when `private_dns_enabled` is `true`. Valid Values are `VERIFIED_DOMAINS_ONLY`, `ALL_DOMAINS`, `VERIFIED_DOMAINS_AND_SPECIFIED_DOMAINS` and `SPECIFIED_DOMAINS_ONLY`.
  final pulumi.Input<String>? privateDnsPreference;
  /// Private domains to create private hosted zones for and associate with the specified VPC. Only supported when `private_dns_enabled` is `true` and `private_dns_preference` is `VERIFIED_DOMAINS_AND_SPECIFIED_DOMAINS` or `SPECIFIED_DOMAINS_ONLY`.
  final pulumi.Input<List<String>>? privateDnsSpecifiedDomains;

  /// Creates a new [ServiceNetworkVpcAssociationDnsOptions].
  /// [privateDnsPreference] Preference for which private domains have a private hosted zone created for and associated with the specified VPC. Only supported when `private_dns_enabled` is `true`. Valid Values are `VERIFIED_DOMAINS_ONLY`, `ALL_DOMAINS`, `VERIFIED_DOMAINS_AND_SPECIFIED_DOMAINS` and `SPECIFIED_DOMAINS_ONLY`.
  /// [privateDnsSpecifiedDomains] Private domains to create private hosted zones for and associate with the specified VPC. Only supported when `private_dns_enabled` is `true` and `private_dns_preference` is `VERIFIED_DOMAINS_AND_SPECIFIED_DOMAINS` or `SPECIFIED_DOMAINS_ONLY`.
  ServiceNetworkVpcAssociationDnsOptions({
    this.privateDnsPreference,
    this.privateDnsSpecifiedDomains,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'privateDnsPreference': ?privateDnsPreference,
      'privateDnsSpecifiedDomains': ?privateDnsSpecifiedDomains,
    };
  }

  factory ServiceNetworkVpcAssociationDnsOptions.fromMap(Map<String, dynamic> map) {
    return ServiceNetworkVpcAssociationDnsOptions(
      privateDnsPreference: (() { final guardedValue = map['privateDnsPreference']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      privateDnsSpecifiedDomains: (() { final guardedValue = map['privateDnsSpecifiedDomains']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}

