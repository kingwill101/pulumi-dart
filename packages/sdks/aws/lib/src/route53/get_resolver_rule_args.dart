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
  const GetResolverRuleArgs({
    this.domainName,
    this.name,
    this.region,
    this.resolverEndpointId,
    this.resolverRuleId,
    this.ruleType,
    this.tags,
  });

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
      domainName: (() { final guardedValue = map['domainName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resolverEndpointId: (() { final guardedValue = map['resolverEndpointId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resolverRuleId: (() { final guardedValue = map['resolverRuleId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ruleType: (() { final guardedValue = map['ruleType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}

