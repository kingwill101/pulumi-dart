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
    required String firewallDomainListId,
    String? region,
  })  : firewallDomainListId =
            pulumi.Input.asInput<String>(firewallDomainListId),
        region = pulumi.Input.asOptionalInput<String>(region);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['firewallDomainListId'] = firewallDomainListId;
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    return map;
  }

  factory GetResolverFirewallDomainListArgs.fromMap(Map<String, dynamic> map) {
    return GetResolverFirewallDomainListArgs(
      firewallDomainListId: map['firewallDomainListId'] as String,
      region: map['region'] == null ? null : map['region'] as String,
    );
  }
}
