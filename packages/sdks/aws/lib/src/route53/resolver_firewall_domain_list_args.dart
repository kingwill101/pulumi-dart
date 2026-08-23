// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_route53_resolver_firewall_domain_list_resolver_firewall_domain_list_args_doc}
/// The set of arguments for ResolverFirewallDomainList.
/// {@endtemplate}
/// {@macro pulumi_route53_resolver_firewall_domain_list_resolver_firewall_domain_list_args_doc}
class ResolverFirewallDomainListArgs {
  /// A array of domains for the firewall domain list.
  final pulumi.Input<List<String>>? domains;
  /// A name that lets you identify the domain list, to manage and use it.
  final pulumi.Input<String>? name;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// A map of tags to assign to the resource. f configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [ResolverFirewallDomainListArgs].
  /// [domains] A array of domains for the firewall domain list.
  /// [name] A name that lets you identify the domain list, to manage and use it.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] A map of tags to assign to the resource. f configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  const ResolverFirewallDomainListArgs({
    this.domains,
    this.name,
    this.region,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'domains': ?domains,
      'name': ?name,
      'region': ?region,
      'tags': ?tags,
    };
  }

  factory ResolverFirewallDomainListArgs.fromMap(Map<String, dynamic> map) {
    return ResolverFirewallDomainListArgs(
      domains: (() { final guardedValue = map['domains']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}
