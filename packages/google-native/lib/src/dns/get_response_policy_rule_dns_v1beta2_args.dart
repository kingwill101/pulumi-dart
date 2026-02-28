// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_dns_v1beta2_get_response_policy_rule_dns_v1beta2_args_doc}
/// Arguments for getResponsePolicyRule.
/// {@endtemplate}
/// {@macro pulumi_dns_v1beta2_get_response_policy_rule_dns_v1beta2_args_doc}
class GetResponsePolicyRuleDnsV1beta2Args {
  final pulumi.Input<String>? clientOperationId;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> responsePolicy;
  final pulumi.Input<String> responsePolicyRule;

  /// Creates a new [GetResponsePolicyRuleDnsV1beta2Args].
  /// [clientOperationId] Optional.
  /// [project] Optional.
  /// [responsePolicy] Required.
  /// [responsePolicyRule] Required.
  GetResponsePolicyRuleDnsV1beta2Args({
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

  factory GetResponsePolicyRuleDnsV1beta2Args.fromMap(Map<String, dynamic> map) {
    return GetResponsePolicyRuleDnsV1beta2Args(
      clientOperationId: map['clientOperationId'] == null ? null : map['clientOperationId'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      responsePolicy: map['responsePolicy'] as String,
      responsePolicyRule: map['responsePolicyRule'] as String,
    );
  }
}

