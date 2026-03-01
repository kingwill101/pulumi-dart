// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_automation_get_schedule_args_doc}
/// Arguments for getSchedule.
/// {@endtemplate}
/// {@macro pulumi_automation_get_schedule_args_doc}
class GetScheduleArgs {
  /// The name of the automation account.
  final pulumi.Input<String> automationAccountName;
  /// Name of an Azure Resource group.
  final pulumi.Input<String> resourceGroupName;
  /// The schedule name.
  final pulumi.Input<String> scheduleName;

  /// Creates a new [GetScheduleArgs].
  /// [automationAccountName] The name of the automation account.
  /// [resourceGroupName] Name of an Azure Resource group.
  /// [scheduleName] The schedule name.
  GetScheduleArgs({
    required String automationAccountName,
    required String resourceGroupName,
    required String scheduleName,
  }) :
      automationAccountName = pulumi.Input.asInput<String>(automationAccountName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      scheduleName = pulumi.Input.asInput<String>(scheduleName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'automationAccountName': automationAccountName,
      'resourceGroupName': resourceGroupName,
      'scheduleName': scheduleName,
    };
  }

  factory GetScheduleArgs.fromMap(Map<String, dynamic> map) {
    return GetScheduleArgs(
      automationAccountName: map['automationAccountName'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      scheduleName: map['scheduleName'] as String,
    );
  }
}

