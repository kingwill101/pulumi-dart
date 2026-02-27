// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../response_plan_action_ssm_automation/response_plan_action_ssm_automation.dart';

class ResponsePlanAction {
  /// The Systems Manager automation document to start as the runbook at the beginning of the incident. The following values are supported:
  final List<ResponsePlanActionSsmAutomation>? ssmAutomations;

  ResponsePlanAction({
    this.ssmAutomations,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final ssmAutomationsValue = ssmAutomations;
    if (ssmAutomationsValue != null) {
      map['ssmAutomations'] = pulumi.Input.encodeList<
          ResponsePlanActionSsmAutomation,
          Map<String, dynamic>>(ssmAutomationsValue, (value) => value.toMap());
    }
    return map;
  }

  factory ResponsePlanAction.fromMap(Map<String, dynamic> map) {
    return ResponsePlanAction(
      ssmAutomations: map['ssmAutomations'] == null
          ? null
          : pulumi.Input.decodeList<ResponsePlanActionSsmAutomation>(
              map['ssmAutomations'],
              (value) => ResponsePlanActionSsmAutomation.fromMap(
                  (value as Map).cast<String, dynamic>())),
    );
  }
}
