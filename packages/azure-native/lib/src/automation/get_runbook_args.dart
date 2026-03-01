// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_automation_get_runbook_args_doc}
/// Arguments for getRunbook.
/// {@endtemplate}
/// {@macro pulumi_automation_get_runbook_args_doc}
class GetRunbookArgs {
  /// The name of the automation account.
  final pulumi.Input<String> automationAccountName;
  /// Name of an Azure Resource group.
  final pulumi.Input<String> resourceGroupName;
  /// The runbook name.
  final pulumi.Input<String> runbookName;

  /// Creates a new [GetRunbookArgs].
  /// [automationAccountName] The name of the automation account.
  /// [resourceGroupName] Name of an Azure Resource group.
  /// [runbookName] The runbook name.
  GetRunbookArgs({
    required String automationAccountName,
    required String resourceGroupName,
    required String runbookName,
  }) :
      automationAccountName = pulumi.Input.asInput<String>(automationAccountName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      runbookName = pulumi.Input.asInput<String>(runbookName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'automationAccountName': automationAccountName,
      'resourceGroupName': resourceGroupName,
      'runbookName': runbookName,
    };
  }

  factory GetRunbookArgs.fromMap(Map<String, dynamic> map) {
    return GetRunbookArgs(
      automationAccountName: map['automationAccountName'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      runbookName: map['runbookName'] as String,
    );
  }
}

