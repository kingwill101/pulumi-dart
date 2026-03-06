// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_automation_list_automation_account_deleted_runbooks_args_doc}
/// Arguments for listAutomationAccountDeletedRunbooks.
/// {@endtemplate}
/// {@macro pulumi_automation_list_automation_account_deleted_runbooks_args_doc}
class ListAutomationAccountDeletedRunbooksArgs {
  /// The name of the automation account.
  final pulumi.Input<String> automationAccountName;
  /// Name of an Azure Resource group.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [ListAutomationAccountDeletedRunbooksArgs].
  /// [automationAccountName] The name of the automation account.
  /// [resourceGroupName] Name of an Azure Resource group.
  const ListAutomationAccountDeletedRunbooksArgs({
    required this.automationAccountName,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'automationAccountName': automationAccountName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory ListAutomationAccountDeletedRunbooksArgs.fromMap(Map<String, dynamic> map) {
    return ListAutomationAccountDeletedRunbooksArgs(
      automationAccountName: pulumi.Input.fromValue(map['automationAccountName'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
    );
  }
}

