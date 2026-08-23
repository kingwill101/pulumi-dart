// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_automation_get_schedule_args_doc}
/// Arguments for getSchedule.
/// {@endtemplate}
/// {@macro pulumi_automation_get_schedule_args_doc}
class GetScheduleArgs {
  /// The name of the automation account.
  final pulumi.Input<String> automationAccountName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The schedule name.
  final pulumi.Input<String> scheduleName;

  /// Creates a new [GetScheduleArgs].
  /// [automationAccountName] The name of the automation account.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [scheduleName] The schedule name.
  const GetScheduleArgs({
    required this.automationAccountName,
    required this.resourceGroupName,
    required this.scheduleName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'automationAccountName': automationAccountName,
      'resourceGroupName': resourceGroupName,
      'scheduleName': scheduleName,
    };
  }

  factory GetScheduleArgs.fromMap(Map<String, dynamic> map) {
    return GetScheduleArgs(
      automationAccountName: pulumi.Input.fromValue(map['automationAccountName'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      scheduleName: pulumi.Input.fromValue(map['scheduleName'] as String),
    );
  }
}
