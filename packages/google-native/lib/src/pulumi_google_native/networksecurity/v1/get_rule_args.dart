// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getRule.
class GetRuleArgs {
  final Input<String> gatewaySecurityPolicyId;
  final Input<String> location;
  final Input<String>? project;
  final Input<String> ruleId;

  GetRuleArgs({
    required this.gatewaySecurityPolicyId,
    required this.location,
    this.project,
    required this.ruleId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['gatewaySecurityPolicyId'] = gatewaySecurityPolicyId;
    map['location'] = location;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['ruleId'] = ruleId;
    return map;
  }

  factory GetRuleArgs.fromMap(Map<String, dynamic> map) {
    return GetRuleArgs(
      gatewaySecurityPolicyId:
          Input.asInput<String>(map['gatewaySecurityPolicyId']),
      location: Input.asInput<String>(map['location']),
      project: Input.asOptionalInput<String>(map['project']),
      ruleId: Input.asInput<String>(map['ruleId']),
    );
  }
}
