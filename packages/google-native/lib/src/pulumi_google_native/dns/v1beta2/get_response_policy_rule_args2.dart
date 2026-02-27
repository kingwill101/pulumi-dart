// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;

/// Arguments for getResponsePolicyRule.
class GetResponsePolicyRuleArgs2 {
  final Input<String>? clientOperationId;
  final Input<String>? project;
  final Input<String> responsePolicy;
  final Input<String> responsePolicyRule;

  GetResponsePolicyRuleArgs2({
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

  factory GetResponsePolicyRuleArgs2.fromMap(Map<String, dynamic> map) {
    return GetResponsePolicyRuleArgs2(
      clientOperationId:
          Input.asOptionalInput<String>(map['clientOperationId']),
      project: Input.asOptionalInput<String>(map['project']),
      responsePolicy: Input.asInput<String>(map['responsePolicy']),
      responsePolicyRule: Input.asInput<String>(map['responsePolicyRule']),
    );
  }
}
