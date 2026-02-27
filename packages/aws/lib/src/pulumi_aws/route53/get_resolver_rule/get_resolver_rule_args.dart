// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getResolverRule.
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

  GetResolverRuleArgs({
    this.domainName,
    this.name,
    this.region,
    this.resolverEndpointId,
    this.resolverRuleId,
    this.ruleType,
    this.tags,
  });

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
      domainName: pulumi.Input.asOptionalInput<String>(map['domainName']),
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      resolverEndpointId:
          pulumi.Input.asOptionalInput<String>(map['resolverEndpointId']),
      resolverRuleId:
          pulumi.Input.asOptionalInput<String>(map['resolverRuleId']),
      ruleType: pulumi.Input.asOptionalInput<String>(map['ruleType']),
      tags: pulumi.Input.asOptionalInput<Map<String, String>>(map['tags']),
    );
  }
}
