// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_response_plan_action_ssm_automation_parameter.dart';

class GetResponsePlanActionSsmAutomation {
  /// The automation document's name.
  final pulumi.Input<String> documentName;
  /// The version of the automation document to use at runtime.
  final pulumi.Input<String> documentVersion;
  /// The key-value pair used to resolve dynamic parameter values when processing a Systems Manager Automation runbook.
  final pulumi.Input<Map<String, String>> dynamicParameters;
  /// The key-value pair parameters used when the automation document runs. The following values are supported:
  final pulumi.Input<List<GetResponsePlanActionSsmAutomationParameter>> parameters;
  /// The ARN of the role that the automation document assumes when it runs commands.
  final pulumi.Input<String> roleArn;
  /// The account that runs the automation document. This can be in either the management account or an application account.
  final pulumi.Input<String> targetAccount;

  /// Creates a new [GetResponsePlanActionSsmAutomation].
  /// [documentName] The automation document's name.
  /// [documentVersion] The version of the automation document to use at runtime.
  /// [dynamicParameters] The key-value pair used to resolve dynamic parameter values when processing a Systems Manager Automation runbook.
  /// [parameters] The key-value pair parameters used when the automation document runs. The following values are supported:
  /// [roleArn] The ARN of the role that the automation document assumes when it runs commands.
  /// [targetAccount] The account that runs the automation document. This can be in either the management account or an application account.
  const GetResponsePlanActionSsmAutomation({
    required this.documentName,
    required this.documentVersion,
    required this.dynamicParameters,
    required this.parameters,
    required this.roleArn,
    required this.targetAccount,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'documentName': documentName,
      'documentVersion': documentVersion,
      'dynamicParameters': dynamicParameters,
      'parameters': pulumi.Input.mapInputValue<List<GetResponsePlanActionSsmAutomationParameter>, List<Map<String, dynamic>>>(parameters, (value) => pulumi.Input.encodeList<GetResponsePlanActionSsmAutomationParameter, Map<String, dynamic>>(value, (value) => value.toMap())),
      'roleArn': roleArn,
      'targetAccount': targetAccount,
    };
  }

  factory GetResponsePlanActionSsmAutomation.fromMap(Map<String, dynamic> map) {
    return GetResponsePlanActionSsmAutomation(
      documentName: pulumi.Input.fromValue(map['documentName'] as String),
      documentVersion: pulumi.Input.fromValue(map['documentVersion'] as String),
      dynamicParameters: pulumi.Input.fromValue((map['dynamicParameters'] as Map).cast<String, String>()),
      parameters: pulumi.Input.fromValue(pulumi.Input.decodeList<GetResponsePlanActionSsmAutomationParameter>(map['parameters']!, (value) => GetResponsePlanActionSsmAutomationParameter.fromMap((value as Map).cast<String, dynamic>()))),
      roleArn: pulumi.Input.fromValue(map['roleArn'] as String),
      targetAccount: pulumi.Input.fromValue(map['targetAccount'] as String),
    );
  }
}
