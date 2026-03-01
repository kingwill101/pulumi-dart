// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_automation_get_runbook_get_runbook_args_doc}
/// Arguments for getRunbook.
/// {@endtemplate}
/// {@macro pulumi_automation_get_runbook_get_runbook_args_doc}
class GetRunbookArgs {
  /// The name of the Automation Account the runbook belongs to.
  final pulumi.Input<String> automationAccountName;
  /// The name of the Automation Runbook.
  final pulumi.Input<String> name;
  /// The name of the Resource Group where the Automation exists.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetRunbookArgs].
  /// [automationAccountName] The name of the Automation Account the runbook belongs to.
  /// [name] The name of the Automation Runbook.
  /// [resourceGroupName] The name of the Resource Group where the Automation exists.
  GetRunbookArgs({
    required String automationAccountName,
    required String name,
    required String resourceGroupName,
  }) :
      automationAccountName = pulumi.Input.asInput<String>(automationAccountName),
      name = pulumi.Input.asInput<String>(name),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'automationAccountName': automationAccountName,
      'name': name,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetRunbookArgs.fromMap(Map<String, dynamic> map) {
    return GetRunbookArgs(
      automationAccountName: map['automationAccountName'] as String,
      name: map['name'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
    );
  }
}

