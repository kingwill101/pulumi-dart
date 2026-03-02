// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'response_plan_action_ssm_automation_parameter.dart';

class ResponsePlanActionSsmAutomation {
  /// The automation document's name.
  final pulumi.Input<String> documentName;
  /// The version of the automation document to use at runtime.
  final pulumi.Input<String>? documentVersion;
  /// The key-value pair to resolve dynamic parameter values when processing a Systems Manager Automation runbook.
  final pulumi.Input<Map<String, String>>? dynamicParameters;
  /// The key-value pair parameters to use when the automation document runs. The following values are supported:
  final pulumi.Input<List<ResponsePlanActionSsmAutomationParameter>>? parameters;
  /// The Amazon Resource Name (ARN) of the role that the automation document assumes when it runs commands.
  final pulumi.Input<String> roleArn;
  /// The account that the automation document runs in. This can be in either the management account or an application account.
  final pulumi.Input<String>? targetAccount;

  /// Creates a new [ResponsePlanActionSsmAutomation].
  /// [documentName] The automation document's name.
  /// [documentVersion] The version of the automation document to use at runtime.
  /// [dynamicParameters] The key-value pair to resolve dynamic parameter values when processing a Systems Manager Automation runbook.
  /// [parameters] The key-value pair parameters to use when the automation document runs. The following values are supported:
  /// [roleArn] The Amazon Resource Name (ARN) of the role that the automation document assumes when it runs commands.
  /// [targetAccount] The account that the automation document runs in. This can be in either the management account or an application account.
  ResponsePlanActionSsmAutomation({
    required this.documentName,
    this.documentVersion,
    this.dynamicParameters,
    this.parameters,
    required this.roleArn,
    this.targetAccount,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'documentName': documentName,
      'documentVersion': ?documentVersion,
      'dynamicParameters': ?dynamicParameters,
      'parameters': ?pulumi.Input.mapOptionalInputValue<List<ResponsePlanActionSsmAutomationParameter>, List<Map<String, dynamic>>>(parameters, (value) => pulumi.Input.encodeList<ResponsePlanActionSsmAutomationParameter, Map<String, dynamic>>(value, (value) => value.toMap())),
      'roleArn': roleArn,
      'targetAccount': ?targetAccount,
    };
  }

  factory ResponsePlanActionSsmAutomation.fromMap(Map<String, dynamic> map) {
    return ResponsePlanActionSsmAutomation(
      documentName: (map['documentName'] as String).input(),
      documentVersion: map['documentVersion'] == null ? null : ((map['documentVersion'] as String).input()).input(),
      dynamicParameters: map['dynamicParameters'] == null ? null : (((map['dynamicParameters'] as Map).cast<String, String>()).input()).input(),
      parameters: map['parameters'] == null ? null : ((pulumi.Input.decodeList<ResponsePlanActionSsmAutomationParameter>(map['parameters']!, (value) => ResponsePlanActionSsmAutomationParameter.fromMap((value as Map).cast<String, dynamic>()))).input()).input(),
      roleArn: (map['roleArn'] as String).input(),
      targetAccount: map['targetAccount'] == null ? null : ((map['targetAccount'] as String).input()).input(),
    );
  }
}

