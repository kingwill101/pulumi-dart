// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_dns_v1_get_response_policy_rule_args_doc}
/// Arguments for getResponsePolicyRule.
/// {@endtemplate}
/// {@macro pulumi_dns_v1_get_response_policy_rule_args_doc}
class GetResponsePolicyRuleArgs {
  final pulumi.Input<String>? clientOperationId;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> responsePolicy;
  final pulumi.Input<String> responsePolicyRule;

  /// Creates a new [GetResponsePolicyRuleArgs].
  /// [clientOperationId] Optional.
  /// [project] Optional.
  /// [responsePolicy] Required.
  /// [responsePolicyRule] Required.
  GetResponsePolicyRuleArgs({
    String? clientOperationId,
    String? project,
    required String responsePolicy,
    required String responsePolicyRule,
  }) :
      clientOperationId = pulumi.Input.asOptionalInput<String>(clientOperationId),
      project = pulumi.Input.asOptionalInput<String>(project),
      responsePolicy = pulumi.Input.asInput<String>(responsePolicy),
      responsePolicyRule = pulumi.Input.asInput<String>(responsePolicyRule);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clientOperationId': ?clientOperationId,
      'project': ?project,
      'responsePolicy': responsePolicy,
      'responsePolicyRule': responsePolicyRule,
    };
  }

  factory GetResponsePolicyRuleArgs.fromMap(Map<String, dynamic> map) {
    return GetResponsePolicyRuleArgs(
      clientOperationId: map['clientOperationId'] == null ? null : map['clientOperationId'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      responsePolicy: map['responsePolicy'] as String,
      responsePolicyRule: map['responsePolicyRule'] as String,
    );
  }
}

