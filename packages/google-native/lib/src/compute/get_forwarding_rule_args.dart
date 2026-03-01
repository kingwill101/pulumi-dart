// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_compute_alpha_get_forwarding_rule_args_doc}
/// Arguments for getForwardingRule.
/// {@endtemplate}
/// {@macro pulumi_compute_alpha_get_forwarding_rule_args_doc}
class GetForwardingRuleArgs {
  final pulumi.Input<String> forwardingRule;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> region;

  /// Creates a new [GetForwardingRuleArgs].
  /// [forwardingRule] Required.
  /// [project] Optional.
  /// [region] Required.
  GetForwardingRuleArgs({
    required String forwardingRule,
    String? project,
    required String region,
  }) : forwardingRule = pulumi.Input.asInput<String>(forwardingRule),
       project = pulumi.Input.asOptionalInput<String>(project),
       region = pulumi.Input.asInput<String>(region);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'forwardingRule': forwardingRule,
      'project': ?project,
      'region': region,
    };
  }

  factory GetForwardingRuleArgs.fromMap(Map<String, dynamic> map) {
    return GetForwardingRuleArgs(
      forwardingRule: map['forwardingRule'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      region: map['region'] as String,
    );
  }
}
