import 'package:pulumi/pulumi.dart';
import 'resolver_firewall_rule_group_args.dart';

/// Provides a Route 53 Resolver DNS Firewall rule group resource.
///
/// ## Example Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import  Route 53 Resolver DNS Firewall rule groups using the Route 53 Resolver DNS Firewall rule group ID. For example:
///
/// ```sh
/// $ pulumi import aws:route53/resolverFirewallRuleGroup:ResolverFirewallRuleGroup example rslvr-frg-0123456789abcdef
/// ```
class ResolverFirewallRuleGroup extends CustomResource {
  /// The ARN (Amazon Resource Name) of the rule group.
  late final Output<String> arn;

  /// A name that lets you identify the rule group, to manage and use it.
  late final Output<String> name;

  /// The AWS account ID for the account that created the rule group. When a rule group is shared with your account, this is the account that has shared the rule group with you.
  late final Output<String> ownerId;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// Whether the rule group is shared with other AWS accounts, or was shared with the current account by another AWS account. Sharing is configured through AWS Resource Access Manager (AWS RAM). Valid values: `NOT_SHARED`, `SHARED_BY_ME`, `SHARED_WITH_ME`
  late final Output<String> shareStatus;

  /// A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final Output<Map<String, String>> tagsAll;

  ResolverFirewallRuleGroup(
    String name, {
    ResolverFirewallRuleGroupArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:route53/resolverFirewallRuleGroup:ResolverFirewallRuleGroup',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.name = registerOutput<String>('name');
    this.ownerId = registerOutput<String>('ownerId');
    this.region = registerOutput<String>('region');
    this.shareStatus = registerOutput<String>('shareStatus');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
  }
}
