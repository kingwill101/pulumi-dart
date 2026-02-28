// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_compute_v1_get_global_forwarding_rule_compute_v1_args_doc}
/// Arguments for getGlobalForwardingRule.
/// {@endtemplate}
/// {@macro pulumi_compute_v1_get_global_forwarding_rule_compute_v1_args_doc}
class GetGlobalForwardingRuleComputeV1Args {
  final pulumi.Input<String> forwardingRule;
  final pulumi.Input<String>? project;

  /// Creates a new [GetGlobalForwardingRuleComputeV1Args].
  /// [forwardingRule] Required.
  /// [project] Optional.
  GetGlobalForwardingRuleComputeV1Args({
    required String forwardingRule,
    String? project,
  })  : forwardingRule = pulumi.Input.asInput<String>(forwardingRule),
        project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['forwardingRule'] = forwardingRule;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory GetGlobalForwardingRuleComputeV1Args.fromMap(
      Map<String, dynamic> map) {
    return GetGlobalForwardingRuleComputeV1Args(
      forwardingRule: map['forwardingRule'] as String,
      project: map['project'] == null ? null : map['project'] as String,
    );
  }
}
