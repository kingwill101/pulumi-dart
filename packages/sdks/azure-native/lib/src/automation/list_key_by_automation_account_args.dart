// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_automation_list_key_by_automation_account_args_doc}
/// Arguments for listKeyByAutomationAccount.
/// {@endtemplate}
/// {@macro pulumi_automation_list_key_by_automation_account_args_doc}
class ListKeyByAutomationAccountArgs {
  /// The name of the automation account.
  final pulumi.Input<String> automationAccountName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [ListKeyByAutomationAccountArgs].
  /// [automationAccountName] The name of the automation account.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  const ListKeyByAutomationAccountArgs({
    required this.automationAccountName,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'automationAccountName': automationAccountName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory ListKeyByAutomationAccountArgs.fromMap(Map<String, dynamic> map) {
    return ListKeyByAutomationAccountArgs(
      automationAccountName: pulumi.Input.fromValue(map['automationAccountName'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
    );
  }
}
