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
  /// A map of tags to assign to the resource. f configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [ResolverFirewallDomainListArgs].
  /// [domains] A array of domains for the firewall domain list.
  /// [name] A name that lets you identify the domain list, to manage and use it.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] A map of tags to assign to the resource. f configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  ResolverFirewallDomainListArgs({
    pulumi.Output<List<String>>? domains,
    pulumi.Output<String>? name,
    pulumi.Output<String>? region,
    pulumi.Output<Map<String, String>>? tags,
  }) :
      domains = pulumi.Input.asOptionalInput<List<String>>(domains),
      name = pulumi.Input.asOptionalInput<String>(name),
      region = pulumi.Input.asOptionalInput<String>(region),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

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
      domains: map['domains'] == null ? null : pulumi.Output.create<List<String>>((map['domains'] as List).cast<String>()),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
    );
  }
}

