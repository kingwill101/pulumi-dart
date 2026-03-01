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
    required pulumi.Output<String> automationAccountName,
    required pulumi.Output<String> resourceGroupName,
    required pulumi.Output<String> scheduleName,
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
      automationAccountName: pulumi.Output.create<String>(map['automationAccountName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      scheduleName: pulumi.Output.create<String>(map['scheduleName'] as String),
    );
  }
}

