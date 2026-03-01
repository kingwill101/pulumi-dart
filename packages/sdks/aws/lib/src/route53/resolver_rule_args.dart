// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'resolver_rule_target_ip.dart';

/// {@template pulumi_route53_resolver_rule_resolver_rule_args_doc}
/// The set of arguments for ResolverRule.
/// {@endtemplate}
/// {@macro pulumi_route53_resolver_rule_resolver_rule_args_doc}
class ResolverRuleArgs {
  /// DNS queries for this domain name are forwarded to the IP addresses that are specified using `target_ip`.
  final pulumi.Input<String> domainName;
  /// Friendly name that lets you easily find a rule in the Resolver dashboard in the Route 53 console.
  final pulumi.Input<String>? name;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// ID of the outbound resolver endpoint that you want to use to route DNS queries to the IP addresses that you specify using `target_ip`.
  /// This argument should only be specified for `FORWARD` type rules.
  final pulumi.Input<String>? resolverEndpointId;
  /// Rule type. Valid values are `FORWARD`, `SYSTEM` and `RECURSIVE`.
  final pulumi.Input<String> ruleType;
  /// Map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// Configuration block(s) indicating the IPs that you want Resolver to forward DNS queries to (documented below).
  /// This argument should only be specified for `FORWARD` type rules.
  final pulumi.Input<List<ResolverRuleTargetIp>>? targetIps;

  /// Creates a new [ResolverRuleArgs].
  /// [domainName] DNS queries for this domain name are forwarded to the IP addresses that are specified using `target_ip`.
  /// [name] Friendly name that lets you easily find a rule in the Resolver dashboard in the Route 53 console.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [resolverEndpointId] ID of the outbound resolver endpoint that you want to use to route DNS queries to the IP addresses that you specify using `target_ip`.
  /// [ruleType] Rule type. Valid values are `FORWARD`, `SYSTEM` and `RECURSIVE`.
  /// [tags] Map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [targetIps] Configuration block(s) indicating the IPs that you want Resolver to forward DNS queries to (documented below).
  ResolverRuleArgs({
    required pulumi.Output<String> domainName,
    pulumi.Output<String>? name,
    pulumi.Output<String>? region,
    pulumi.Output<String>? resolverEndpointId,
    required pulumi.Output<String> ruleType,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<List<ResolverRuleTargetIp>>? targetIps,
  }) :
      domainName = pulumi.Input.asInput<String>(domainName),
      name = pulumi.Input.asOptionalInput<String>(name),
      region = pulumi.Input.asOptionalInput<String>(region),
      resolverEndpointId = pulumi.Input.asOptionalInput<String>(resolverEndpointId),
      ruleType = pulumi.Input.asInput<String>(ruleType),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      targetIps = pulumi.Input.asOptionalInput<List<ResolverRuleTargetIp>>(targetIps);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'domainName': domainName,
      'name': ?name,
      'region': ?region,
      'resolverEndpointId': ?resolverEndpointId,
      'ruleType': ruleType,
      'tags': ?tags,
      'targetIps': ?pulumi.Input.mapOptionalInputValue<List<ResolverRuleTargetIp>, List<Map<String, dynamic>>>(targetIps, (value) => pulumi.Input.encodeList<ResolverRuleTargetIp, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory ResolverRuleArgs.fromMap(Map<String, dynamic> map) {
    return ResolverRuleArgs(
      domainName: pulumi.Output.create<String>(map['domainName'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      resolverEndpointId: map['resolverEndpointId'] == null ? null : pulumi.Output.create<String>(map['resolverEndpointId'] as String),
      ruleType: pulumi.Output.create<String>(map['ruleType'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      targetIps: map['targetIps'] == null ? null : pulumi.Output.create<List<ResolverRuleTargetIp>>(pulumi.Input.decodeList<ResolverRuleTargetIp>(map['targetIps'], (value) => ResolverRuleTargetIp.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}

