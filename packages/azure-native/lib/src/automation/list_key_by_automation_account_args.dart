// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_automation_list_key_by_automation_account_args_doc}
/// Arguments for listKeyByAutomationAccount.
/// {@endtemplate}
/// {@macro pulumi_automation_list_key_by_automation_account_args_doc}
class ListKeyByAutomationAccountArgs {
  /// The name of the automation account.
  final pulumi.Input<String> automationAccountName;
  /// Name of an Azure Resource group.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [ListKeyByAutomationAccountArgs].
  /// [automationAccountName] The name of the automation account.
  /// [resourceGroupName] Name of an Azure Resource group.
  ListKeyByAutomationAccountArgs({
    required String automationAccountName,
    required String resourceGroupName,
  }) :
      automationAccountName = pulumi.Input.asInput<String>(automationAccountName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'automationAccountName': automationAccountName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory ListKeyByAutomationAccountArgs.fromMap(Map<String, dynamic> map) {
    return ListKeyByAutomationAccountArgs(
      automationAccountName: map['automationAccountName'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
    );
  }
}

