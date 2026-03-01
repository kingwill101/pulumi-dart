// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_response_plan_action_ssm_automation.dart';

class GetResponsePlanAction {
  /// The Systems Manager automation document to start as the runbook at the beginning of the incident. The following values are supported:
  final List<GetResponsePlanActionSsmAutomation> ssmAutomations;

  /// Creates a new [GetResponsePlanAction].
  /// [ssmAutomations] The Systems Manager automation document to start as the runbook at the beginning of the incident. The following values are supported:
  GetResponsePlanAction({required this.ssmAutomations});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ssmAutomations':
          pulumi.Input.encodeList<
            GetResponsePlanActionSsmAutomation,
            Map<String, dynamic>
          >(ssmAutomations, (value) => value.toMap()),
    };
  }

  factory GetResponsePlanAction.fromMap(Map<String, dynamic> map) {
    return GetResponsePlanAction(
      ssmAutomations:
          pulumi.Input.decodeList<GetResponsePlanActionSsmAutomation>(
            map['ssmAutomations'],
            (value) => GetResponsePlanActionSsmAutomation.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
    );
  }
}
