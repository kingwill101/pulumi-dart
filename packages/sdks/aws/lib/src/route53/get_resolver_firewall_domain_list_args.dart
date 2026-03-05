// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_route53_get_resolver_firewall_domain_list_get_resolver_firewall_domain_list_args_doc}
/// Arguments for getResolverFirewallDomainList.
/// {@endtemplate}
/// {@macro pulumi_route53_get_resolver_firewall_domain_list_get_resolver_firewall_domain_list_args_doc}
class GetResolverFirewallDomainListArgs {
  /// The ID of the domain list.
  final pulumi.Input<String> firewallDomainListId;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Creates a new [GetResolverFirewallDomainListArgs].
  /// [firewallDomainListId] The ID of the domain list.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  GetResolverFirewallDomainListArgs({
    required this.firewallDomainListId,
    this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'firewallDomainListId': firewallDomainListId,
      'region': ?region,
    };
  }

  factory GetResolverFirewallDomainListArgs.fromMap(Map<String, dynamic> map) {
    return GetResolverFirewallDomainListArgs(
      firewallDomainListId: pulumi.Input.fromValue(map['firewallDomainListId'] as String),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

