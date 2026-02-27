import 'package:pulumi/pulumi.dart' as pulumi;
import 'resolver_firewall_rule_group_association_args.dart';

/// Provides a Route 53 Resolver DNS Firewall rule group association resource.
///
/// ## Example Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import Route 53 Resolver DNS Firewall rule group associations using the Route 53 Resolver DNS Firewall rule group association ID. For example:
///
/// ```sh
/// $ pulumi import aws:route53/resolverFirewallRuleGroupAssociation:ResolverFirewallRuleGroupAssociation example rslvr-frgassoc-0123456789abcdef
/// ```
class ResolverFirewallRuleGroupAssociation extends pulumi.CustomResource {
  /// The ARN (Amazon Resource Name) of the firewall rule group association.
  late final pulumi.Output<String> arn;

  /// The unique identifier of the firewall rule group.
  late final pulumi.Output<String> firewallRuleGroupId;

  /// If enabled, this setting disallows modification or removal of the association, to help prevent against accidentally altering DNS firewall protections. Valid values: `ENABLED`, `DISABLED`.
  late final pulumi.Output<String> mutationProtection;

  /// A name that lets you identify the rule group association, to manage and use it.
  late final pulumi.Output<String> name;

  /// The setting that determines the processing order of the rule group among the rule groups that you associate with the specified VPC. DNS Firewall filters VPC traffic starting from the rule group with the lowest numeric priority setting.
  late final pulumi.Output<int> priority;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// Key-value map of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;

  /// The unique identifier of the VPC that you want to associate with the rule group.
  late final pulumi.Output<String> vpcId;

  ResolverFirewallRuleGroupAssociation(
    String name, {
    ResolverFirewallRuleGroupAssociationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:route53/resolverFirewallRuleGroupAssociation:ResolverFirewallRuleGroupAssociation',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.firewallRuleGroupId = registerOutput<String>('firewallRuleGroupId');
    this.mutationProtection = registerOutput<String>('mutationProtection');
    this.name = registerOutput<String>('name');
    this.priority = registerOutput<int>('priority');
    this.region = registerOutput<String>('region');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.vpcId = registerOutput<String>('vpcId');
  }
}
