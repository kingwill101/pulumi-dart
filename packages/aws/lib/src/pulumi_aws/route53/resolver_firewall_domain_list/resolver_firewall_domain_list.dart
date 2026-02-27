import 'package:pulumi/pulumi.dart' as pulumi;
import 'resolver_firewall_domain_list_args.dart';

/// Provides a Route 53 Resolver DNS Firewall domain list resource.
///
/// ## Example Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import  Route 53 Resolver DNS Firewall domain lists using the Route 53 Resolver DNS Firewall domain list ID. For example:
///
/// ```sh
/// $ pulumi import aws:route53/resolverFirewallDomainList:ResolverFirewallDomainList example rslvr-fdl-0123456789abcdef
/// ```
class ResolverFirewallDomainList extends pulumi.CustomResource {
  /// The ARN (Amazon Resource Name) of the domain list.
  late final pulumi.Output<String> arn;

  /// A array of domains for the firewall domain list.
  late final pulumi.Output<List<String>?> domains;

  /// A name that lets you identify the domain list, to manage and use it.
  late final pulumi.Output<String> name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// A map of tags to assign to the resource. f configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;

  ResolverFirewallDomainList(
    String name, {
    ResolverFirewallDomainListArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:route53/resolverFirewallDomainList:ResolverFirewallDomainList',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.domains = registerOutput<List<String>?>('domains');
    this.name = registerOutput<String>('name');
    this.region = registerOutput<String>('region');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
  }
}
