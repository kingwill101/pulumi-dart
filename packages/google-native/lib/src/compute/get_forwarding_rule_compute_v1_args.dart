// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_compute_v1_get_forwarding_rule_compute_v1_args_doc}
/// Arguments for getForwardingRule.
/// {@endtemplate}
/// {@macro pulumi_compute_v1_get_forwarding_rule_compute_v1_args_doc}
class GetForwardingRuleComputeV1Args {
  final pulumi.Input<String> forwardingRule;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> region;

  /// Creates a new [GetForwardingRuleComputeV1Args].
  /// [forwardingRule] Required.
  /// [project] Optional.
  /// [region] Required.
  GetForwardingRuleComputeV1Args({
    required String forwardingRule,
    String? project,
    required String region,
  })  : forwardingRule = pulumi.Input.asInput<String>(forwardingRule),
        project = pulumi.Input.asOptionalInput<String>(project),
        region = pulumi.Input.asInput<String>(region);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['forwardingRule'] = forwardingRule;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['region'] = region;
    return map;
  }

  factory GetForwardingRuleComputeV1Args.fromMap(Map<String, dynamic> map) {
    return GetForwardingRuleComputeV1Args(
      forwardingRule: map['forwardingRule'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      region: map['region'] as String,
    );
  }
}
