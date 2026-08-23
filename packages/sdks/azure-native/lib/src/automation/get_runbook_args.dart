// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_automation_get_runbook_args_doc}
/// Arguments for getRunbook.
/// {@endtemplate}
/// {@macro pulumi_automation_get_runbook_args_doc}
class GetRunbookArgs {
  /// The name of the automation account.
  final pulumi.Input<String> automationAccountName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The runbook name.
  final pulumi.Input<String> runbookName;

  /// Creates a new [GetRunbookArgs].
  /// [automationAccountName] The name of the automation account.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [runbookName] The runbook name.
  const GetRunbookArgs({
    required this.automationAccountName,
    required this.resourceGroupName,
    required this.runbookName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'automationAccountName': automationAccountName,
      'resourceGroupName': resourceGroupName,
      'runbookName': runbookName,
    };
  }

  factory GetRunbookArgs.fromMap(Map<String, dynamic> map) {
    return GetRunbookArgs(
      automationAccountName: pulumi.Input.fromValue(map['automationAccountName'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      runbookName: pulumi.Input.fromValue(map['runbookName'] as String),
    );
  }
}
