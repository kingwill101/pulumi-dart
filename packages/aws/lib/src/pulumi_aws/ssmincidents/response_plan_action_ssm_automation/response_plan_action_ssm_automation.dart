// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../response_plan_action_ssm_automation_parameter/response_plan_action_ssm_automation_parameter.dart';

class ResponsePlanActionSsmAutomation {
  /// The automation document's name.
  final String documentName;

  /// The version of the automation document to use at runtime.
  final String? documentVersion;

  /// The key-value pair to resolve dynamic parameter values when processing a Systems Manager Automation runbook.
  final Map<String, String>? dynamicParameters;

  /// The key-value pair parameters to use when the automation document runs. The following values are supported:
  final List<ResponsePlanActionSsmAutomationParameter>? parameters;

  /// The Amazon Resource Name (ARN) of the role that the automation document assumes when it runs commands.
  final String roleArn;

  /// The account that the automation document runs in. This can be in either the management account or an application account.
  final String? targetAccount;

  ResponsePlanActionSsmAutomation({
    required this.documentName,
    this.documentVersion,
    this.dynamicParameters,
    this.parameters,
    required this.roleArn,
    this.targetAccount,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['documentName'] = documentName;
    final documentVersionValue = documentVersion;
    if (documentVersionValue != null) {
      map['documentVersion'] = documentVersionValue;
    }
    final dynamicParametersValue = dynamicParameters;
    if (dynamicParametersValue != null) {
      map['dynamicParameters'] = dynamicParametersValue;
    }
    final parametersValue = parameters;
    if (parametersValue != null) {
      map['parameters'] = pulumi.Input.encodeList<
          ResponsePlanActionSsmAutomationParameter,
          Map<String, dynamic>>(parametersValue, (value) => value.toMap());
    }
    map['roleArn'] = roleArn;
    final targetAccountValue = targetAccount;
    if (targetAccountValue != null) {
      map['targetAccount'] = targetAccountValue;
    }
    return map;
  }

  factory ResponsePlanActionSsmAutomation.fromMap(Map<String, dynamic> map) {
    return ResponsePlanActionSsmAutomation(
      documentName: map['documentName'] as String,
      documentVersion: map['documentVersion'] == null
          ? null
          : map['documentVersion'] as String,
      dynamicParameters: map['dynamicParameters'] == null
          ? null
          : (map['dynamicParameters'] as Map).cast<String, String>(),
      parameters: map['parameters'] == null
          ? null
          : pulumi.Input.decodeList<ResponsePlanActionSsmAutomationParameter>(
              map['parameters'],
              (value) => ResponsePlanActionSsmAutomationParameter.fromMap(
                  (value as Map).cast<String, dynamic>())),
      roleArn: map['roleArn'] as String,
      targetAccount:
          map['targetAccount'] == null ? null : map['targetAccount'] as String,
    );
  }
}
