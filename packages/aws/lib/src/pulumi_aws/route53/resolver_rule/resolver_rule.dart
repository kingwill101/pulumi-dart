import 'package:pulumi/pulumi.dart';
import '../resolver_rule_target_ip/resolver_rule_target_ip.dart';
import 'resolver_rule_args.dart';

/// Provides a Route53 Resolver rule.
///
/// ## Example Usage
///
/// ### System rule
///
///
///
/// ### Forward rule
///
///
///
/// ### IPv6 Forward rule
///
///
///
/// ## Import
///
/// ### Identity Schema
///
/// #### Required
///
/// * `id` - (String) ID of the Route53 Resolver rule.
///
/// #### Optional
///
/// * `account_id` (String) AWS Account where this resource is managed.
/// * `region` (String) Region where this resource is managed.
///
///
/// Using `pulumi import`, import Route53 Resolver rules using the `id`. For example:
///
/// ```sh
/// $ pulumi import aws:route53/resolverRule:ResolverRule example rslvr-rr-0123456789abcdef0
/// ```
class ResolverRule extends CustomResource {
  /// ARN (Amazon Resource Name) for the resolver rule.
  late final Output<String> arn;

  /// DNS queries for this domain name are forwarded to the IP addresses that are specified using `target_ip`.
  late final Output<String> domainName;

  /// Friendly name that lets you easily find a rule in the Resolver dashboard in the Route 53 console.
  late final Output<String> name;

  /// When a rule is shared with another AWS account, the account ID of the account that the rule is shared with.
  late final Output<String> ownerId;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// ID of the outbound resolver endpoint that you want to use to route DNS queries to the IP addresses that you specify using `target_ip`.
  /// This argument should only be specified for `FORWARD` type rules.
  late final Output<String?> resolverEndpointId;

  /// Rule type. Valid values are `FORWARD`, `SYSTEM` and `RECURSIVE`.
  late final Output<String> ruleType;

  /// Whether the rules is shared and, if so, whether the current account is sharing the rule with another account, or another account is sharing the rule with the current account.
  /// Values are `NOT_SHARED`, `SHARED_BY_ME` or `SHARED_WITH_ME`
  late final Output<String> shareStatus;

  /// Map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;

  /// Map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final Output<Map<String, String>> tagsAll;

  /// Configuration block(s) indicating the IPs that you want Resolver to forward DNS queries to (documented below).
  /// This argument should only be specified for `FORWARD` type rules.
  late final Output<List<ResolverRuleTargetIp>?> targetIps;

  ResolverRule(
    String name, {
    ResolverRuleArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:route53/resolverRule:ResolverRule',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.domainName = registerOutput<String>('domainName');
    this.name = registerOutput<String>('name');
    this.ownerId = registerOutput<String>('ownerId');
    this.region = registerOutput<String>('region');
    this.resolverEndpointId = registerOutput<String?>('resolverEndpointId');
    this.ruleType = registerOutput<String>('ruleType');
    this.shareStatus = registerOutput<String>('shareStatus');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.targetIps = registerOutput<List<ResolverRuleTargetIp>?>('targetIps');
  }
}
