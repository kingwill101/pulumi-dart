// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getResponsePolicyRule.
class GetResponsePolicyRuleArgs {
  final pulumi.Input<String>? clientOperationId;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> responsePolicy;
  final pulumi.Input<String> responsePolicyRule;

  GetResponsePolicyRuleArgs({
    this.clientOperationId,
    this.project,
    required this.responsePolicy,
    required this.responsePolicyRule,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final clientOperationIdValue = clientOperationId;
    if (clientOperationIdValue != null) {
      map['clientOperationId'] = clientOperationIdValue;
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['responsePolicy'] = responsePolicy;
    map['responsePolicyRule'] = responsePolicyRule;
    return map;
  }

  factory GetResponsePolicyRuleArgs.fromMap(Map<String, dynamic> map) {
    return GetResponsePolicyRuleArgs(
      clientOperationId:
          pulumi.Input.asOptionalInput<String>(map['clientOperationId']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      responsePolicy: pulumi.Input.asInput<String>(map['responsePolicy']),
      responsePolicyRule:
          pulumi.Input.asInput<String>(map['responsePolicyRule']),
    );
  }
}
