// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class RuleGroupRuleGroupRulesSourceRulesSourceList {
  /// Action to apply to domains in the target list. Valid values: `ALLOWLIST`, `DENYLIST`, `REJECTLIST`, `ALERTLIST`.
  final pulumi.Input<String> generatedRulesType;
  /// Set of types of domain specifications that are provided in the `targets` argument. Valid values: `AWS_ROUTE_53_RESOLVED_DOMAIN`, `HTTP_HOST`, `TLS_SNI`. `AWS_ROUTE_53_RESOLVED_DOMAIN` takes effect only when the firewall policy that uses the rule group configures `route53ResolvedIpValidation`. For more information, see [Route 53 resolved IP validation rules](https://docs.aws.amazon.com/network-firewall/latest/developerguide/route53-resolved-ip-validation-rules.html) in the AWS Network Firewall Developer Guide.
  final pulumi.Input<List<String>> targetTypes;
  /// Set of domains that you want to inspect for in your traffic flows.
  final pulumi.Input<List<String>> targets;

  /// Creates a new [RuleGroupRuleGroupRulesSourceRulesSourceList].
  /// [generatedRulesType] Action to apply to domains in the target list. Valid values: `ALLOWLIST`, `DENYLIST`, `REJECTLIST`, `ALERTLIST`.
  /// [targetTypes] Set of types of domain specifications that are provided in the `targets` argument. Valid values: `AWS_ROUTE_53_RESOLVED_DOMAIN`, `HTTP_HOST`, `TLS_SNI`. `AWS_ROUTE_53_RESOLVED_DOMAIN` takes effect only when the firewall policy that uses the rule group configures `route53ResolvedIpValidation`. For more information, see [Route 53 resolved IP validation rules](https://docs.aws.amazon.com/network-firewall/latest/developerguide/route53-resolved-ip-validation-rules.html) in the AWS Network Firewall Developer Guide.
  /// [targets] Set of domains that you want to inspect for in your traffic flows.
  const RuleGroupRuleGroupRulesSourceRulesSourceList({
    required this.generatedRulesType,
    required this.targetTypes,
    required this.targets,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'generatedRulesType': generatedRulesType,
      'targetTypes': targetTypes,
      'targets': targets,
    };
  }

  factory RuleGroupRuleGroupRulesSourceRulesSourceList.fromMap(Map<String, dynamic> map) {
    return RuleGroupRuleGroupRulesSourceRulesSourceList(
      generatedRulesType: pulumi.Input.fromValue(map['generatedRulesType'] as String),
      targetTypes: pulumi.Input.fromValue((map['targetTypes'] as List).cast<String>()),
      targets: pulumi.Input.fromValue((map['targets'] as List).cast<String>()),
    );
  }
}
