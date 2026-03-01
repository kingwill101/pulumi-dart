// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_route53_get_resolver_rule_get_resolver_rule_args_doc}
/// Arguments for getResolverRule.
/// {@endtemplate}
/// {@macro pulumi_route53_get_resolver_rule_get_resolver_rule_args_doc}
class GetResolverRuleArgs {
  /// Domain name the desired resolver rule forwards DNS queries for. Conflicts with `resolver_rule_id`.
  final pulumi.Input<String>? domainName;
  /// Friendly name of the desired resolver rule. Conflicts with `resolver_rule_id`.
  final pulumi.Input<String>? name;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// ID of the outbound resolver endpoint of the desired resolver rule. Conflicts with `resolver_rule_id`.
  final pulumi.Input<String>? resolverEndpointId;
  /// ID of the desired resolver rule. Conflicts with `domain_name`, `name`, `resolver_endpoint_id` and `rule_type`.
  final pulumi.Input<String>? resolverRuleId;
  /// Rule type of the desired resolver rule. Valid values are `FORWARD`, `SYSTEM` and `RECURSIVE`. Conflicts with `resolver_rule_id`.
  final pulumi.Input<String>? ruleType;
  /// Map of tags assigned to the resolver rule.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [GetResolverRuleArgs].
  /// [domainName] Domain name the desired resolver rule forwards DNS queries for. Conflicts with `resolver_rule_id`.
  /// [name] Friendly name of the desired resolver rule. Conflicts with `resolver_rule_id`.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [resolverEndpointId] ID of the outbound resolver endpoint of the desired resolver rule. Conflicts with `resolver_rule_id`.
  /// [resolverRuleId] ID of the desired resolver rule. Conflicts with `domain_name`, `name`, `resolver_endpoint_id` and `rule_type`.
  /// [ruleType] Rule type of the desired resolver rule. Valid values are `FORWARD`, `SYSTEM` and `RECURSIVE`. Conflicts with `resolver_rule_id`.
  /// [tags] Map of tags assigned to the resolver rule.
  GetResolverRuleArgs({
    pulumi.Output<String>? domainName,
    pulumi.Output<String>? name,
    pulumi.Output<String>? region,
    pulumi.Output<String>? resolverEndpointId,
    pulumi.Output<String>? resolverRuleId,
    pulumi.Output<String>? ruleType,
    pulumi.Output<Map<String, String>>? tags,
  }) :
      domainName = pulumi.Input.asOptionalInput<String>(domainName),
      name = pulumi.Input.asOptionalInput<String>(name),
      region = pulumi.Input.asOptionalInput<String>(region),
      resolverEndpointId = pulumi.Input.asOptionalInput<String>(resolverEndpointId),
      resolverRuleId = pulumi.Input.asOptionalInput<String>(resolverRuleId),
      ruleType = pulumi.Input.asOptionalInput<String>(ruleType),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'domainName': ?domainName,
      'name': ?name,
      'region': ?region,
      'resolverEndpointId': ?resolverEndpointId,
      'resolverRuleId': ?resolverRuleId,
      'ruleType': ?ruleType,
      'tags': ?tags,
    };
  }

  factory GetResolverRuleArgs.fromMap(Map<String, dynamic> map) {
    return GetResolverRuleArgs(
      domainName: map['domainName'] == null ? null : pulumi.Output.create<String>(map['domainName'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      resolverEndpointId: map['resolverEndpointId'] == null ? null : pulumi.Output.create<String>(map['resolverEndpointId'] as String),
      resolverRuleId: map['resolverRuleId'] == null ? null : pulumi.Output.create<String>(map['resolverRuleId'] as String),
      ruleType: map['ruleType'] == null ? null : pulumi.Output.create<String>(map['ruleType'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
    );
  }
}

