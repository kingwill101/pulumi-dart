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
    String? domainName,
    String? name,
    String? region,
    String? resolverEndpointId,
    String? resolverRuleId,
    String? ruleType,
    Map<String, String>? tags,
  })  : domainName = pulumi.Input.asOptionalInput<String>(domainName),
        name = pulumi.Input.asOptionalInput<String>(name),
        region = pulumi.Input.asOptionalInput<String>(region),
        resolverEndpointId =
            pulumi.Input.asOptionalInput<String>(resolverEndpointId),
        resolverRuleId = pulumi.Input.asOptionalInput<String>(resolverRuleId),
        ruleType = pulumi.Input.asOptionalInput<String>(ruleType),
        tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final domainNameValue = domainName;
    if (domainNameValue != null) {
      map['domainName'] = domainNameValue;
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final resolverEndpointIdValue = resolverEndpointId;
    if (resolverEndpointIdValue != null) {
      map['resolverEndpointId'] = resolverEndpointIdValue;
    }
    final resolverRuleIdValue = resolverRuleId;
    if (resolverRuleIdValue != null) {
      map['resolverRuleId'] = resolverRuleIdValue;
    }
    final ruleTypeValue = ruleType;
    if (ruleTypeValue != null) {
      map['ruleType'] = ruleTypeValue;
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    return map;
  }

  factory GetResolverRuleArgs.fromMap(Map<String, dynamic> map) {
    return GetResolverRuleArgs(
      domainName:
          map['domainName'] == null ? null : map['domainName'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      region: map['region'] == null ? null : map['region'] as String,
      resolverEndpointId: map['resolverEndpointId'] == null
          ? null
          : map['resolverEndpointId'] as String,
      resolverRuleId: map['resolverRuleId'] == null
          ? null
          : map['resolverRuleId'] as String,
      ruleType: map['ruleType'] == null ? null : map['ruleType'] as String,
      tags: map['tags'] == null
          ? null
          : (map['tags'] as Map).cast<String, String>(),
    );
  }
}
