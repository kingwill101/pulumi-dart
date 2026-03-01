// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_automation_get_variable_args_doc}
/// Arguments for getVariable.
/// {@endtemplate}
/// {@macro pulumi_automation_get_variable_args_doc}
class GetVariableArgs {
  /// The name of the automation account.
  final pulumi.Input<String> automationAccountName;
  /// Name of an Azure Resource group.
  final pulumi.Input<String> resourceGroupName;
  /// The name of variable.
  final pulumi.Input<String> variableName;

  /// Creates a new [GetVariableArgs].
  /// [automationAccountName] The name of the automation account.
  /// [resourceGroupName] Name of an Azure Resource group.
  /// [variableName] The name of variable.
  GetVariableArgs({
    required String automationAccountName,
    required String resourceGroupName,
    required String variableName,
  }) :
      automationAccountName = pulumi.Input.asInput<String>(automationAccountName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      variableName = pulumi.Input.asInput<String>(variableName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'automationAccountName': automationAccountName,
      'resourceGroupName': resourceGroupName,
      'variableName': variableName,
    };
  }

  factory GetVariableArgs.fromMap(Map<String, dynamic> map) {
    return GetVariableArgs(
      automationAccountName: map['automationAccountName'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      variableName: map['variableName'] as String,
    );
  }
}

