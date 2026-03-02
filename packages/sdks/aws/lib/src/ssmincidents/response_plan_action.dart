// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'response_plan_action_ssm_automation.dart';

class ResponsePlanAction {
  /// The Systems Manager automation document to start as the runbook at the beginning of the incident. The following values are supported:
  final pulumi.Input<List<ResponsePlanActionSsmAutomation>>? ssmAutomations;

  /// Creates a new [ResponsePlanAction].
  /// [ssmAutomations] The Systems Manager automation document to start as the runbook at the beginning of the incident. The following values are supported:
  ResponsePlanAction({
    this.ssmAutomations,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ssmAutomations': ?pulumi.Input.mapOptionalInputValue<List<ResponsePlanActionSsmAutomation>, List<Map<String, dynamic>>>(ssmAutomations, (value) => pulumi.Input.encodeList<ResponsePlanActionSsmAutomation, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory ResponsePlanAction.fromMap(Map<String, dynamic> map) {
    return ResponsePlanAction(
      ssmAutomations: map['ssmAutomations'] == null ? null : (pulumi.Input.decodeList<ResponsePlanActionSsmAutomation>(map['ssmAutomations'], (value) => ResponsePlanActionSsmAutomation.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

