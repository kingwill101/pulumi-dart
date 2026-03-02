// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_ess_get_scheduled_tasks_get_scheduled_tasks_args_doc}
/// Arguments for getScheduledTasks.
/// {@endtemplate}
/// {@macro pulumi_ess_get_scheduled_tasks_get_scheduled_tasks_args_doc}
class GetScheduledTasksArgs {
  /// A list of scheduled task IDs.
  final pulumi.Input<List<String>>? ids;
  /// A regex string to filter resulting scheduled tasks by name.
  final pulumi.Input<String>? nameRegex;
  /// File name where to save data source results (after running `pulumi preview`).
  final pulumi.Input<String>? outputFile;
  /// The operation to be performed when a scheduled task is triggered.
  final pulumi.Input<String>? scheduledAction;
  /// The id of the scheduled task.
  final pulumi.Input<String>? scheduledTaskId;

  /// Creates a new [GetScheduledTasksArgs].
  /// [ids] A list of scheduled task IDs.
  /// [nameRegex] A regex string to filter resulting scheduled tasks by name.
  /// [outputFile] File name where to save data source results (after running `pulumi preview`).
  /// [scheduledAction] The operation to be performed when a scheduled task is triggered.
  /// [scheduledTaskId] The id of the scheduled task.
  GetScheduledTasksArgs({
    this.ids,
    this.nameRegex,
    this.outputFile,
    this.scheduledAction,
    this.scheduledTaskId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ids': ?ids,
      'nameRegex': ?nameRegex,
      'outputFile': ?outputFile,
      'scheduledAction': ?scheduledAction,
      'scheduledTaskId': ?scheduledTaskId,
    };
  }

  factory GetScheduledTasksArgs.fromMap(Map<String, dynamic> map) {
    return GetScheduledTasksArgs(
      ids: map['ids'] == null ? null : ((map['ids'] as List).cast<String>()).input(),
      nameRegex: map['nameRegex'] == null ? null : (map['nameRegex'] as String).input(),
      outputFile: map['outputFile'] == null ? null : (map['outputFile'] as String).input(),
      scheduledAction: map['scheduledAction'] == null ? null : (map['scheduledAction'] as String).input(),
      scheduledTaskId: map['scheduledTaskId'] == null ? null : (map['scheduledTaskId'] as String).input(),
    );
  }
}

