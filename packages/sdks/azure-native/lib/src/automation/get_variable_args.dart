// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_automation_get_variable_args_doc}
/// Arguments for getVariable.
/// {@endtemplate}
/// {@macro pulumi_automation_get_variable_args_doc}
class GetVariableArgs {
  /// The name of the automation account.
  final pulumi.Input<String> automationAccountName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The name of variable.
  final pulumi.Input<String> variableName;

  /// Creates a new [GetVariableArgs].
  /// [automationAccountName] The name of the automation account.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [variableName] The name of variable.
  const GetVariableArgs({
    required this.automationAccountName,
    required this.resourceGroupName,
    required this.variableName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'automationAccountName': automationAccountName,
      'resourceGroupName': resourceGroupName,
      'variableName': variableName,
    };
  }

  factory GetVariableArgs.fromMap(Map<String, dynamic> map) {
    return GetVariableArgs(
      automationAccountName: pulumi.Input.fromValue(map['automationAccountName'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      variableName: pulumi.Input.fromValue(map['variableName'] as String),
    );
  }
}
