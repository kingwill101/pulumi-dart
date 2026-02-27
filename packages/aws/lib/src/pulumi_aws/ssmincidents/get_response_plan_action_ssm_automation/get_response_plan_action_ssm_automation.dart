// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../get_response_plan_action_ssm_automation_parameter/get_response_plan_action_ssm_automation_parameter.dart';

class GetResponsePlanActionSsmAutomation {
  /// The automation document's name.
  final String documentName;

  /// The version of the automation document to use at runtime.
  final String documentVersion;

  /// The key-value pair used to resolve dynamic parameter values when processing a Systems Manager Automation runbook.
  final Map<String, String> dynamicParameters;

  /// The key-value pair parameters used when the automation document runs. The following values are supported:
  final List<GetResponsePlanActionSsmAutomationParameter> parameters;

  /// The Amazon Resource Name (ARN) of the role that the automation document assumes when it runs commands.
  final String roleArn;

  /// The account that runs the automation document. This can be in either the management account or an application account.
  final String targetAccount;

  GetResponsePlanActionSsmAutomation({
    required this.documentName,
    required this.documentVersion,
    required this.dynamicParameters,
    required this.parameters,
    required this.roleArn,
    required this.targetAccount,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['documentName'] = documentName;
    map['documentVersion'] = documentVersion;
    map['dynamicParameters'] = dynamicParameters;
    map['parameters'] = pulumi.Input.encodeList<
        GetResponsePlanActionSsmAutomationParameter,
        Map<String, dynamic>>(parameters, (value) => value.toMap());
    map['roleArn'] = roleArn;
    map['targetAccount'] = targetAccount;
    return map;
  }

  factory GetResponsePlanActionSsmAutomation.fromMap(Map<String, dynamic> map) {
    return GetResponsePlanActionSsmAutomation(
      documentName: map['documentName'] as String,
      documentVersion: map['documentVersion'] as String,
      dynamicParameters:
          (map['dynamicParameters'] as Map).cast<String, String>(),
      parameters:
          pulumi.Input.decodeList<GetResponsePlanActionSsmAutomationParameter>(
              map['parameters'],
              (value) => GetResponsePlanActionSsmAutomationParameter.fromMap(
                  (value as Map).cast<String, dynamic>())),
      roleArn: map['roleArn'] as String,
      targetAccount: map['targetAccount'] as String,
    );
  }
}
