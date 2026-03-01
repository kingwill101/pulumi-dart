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
    pulumi.Output<List<String>>? ids,
    pulumi.Output<String>? nameRegex,
    pulumi.Output<String>? outputFile,
    pulumi.Output<String>? scheduledAction,
    pulumi.Output<String>? scheduledTaskId,
  }) :
      ids = pulumi.Input.asOptionalInput<List<String>>(ids),
      nameRegex = pulumi.Input.asOptionalInput<String>(nameRegex),
      outputFile = pulumi.Input.asOptionalInput<String>(outputFile),
      scheduledAction = pulumi.Input.asOptionalInput<String>(scheduledAction),
      scheduledTaskId = pulumi.Input.asOptionalInput<String>(scheduledTaskId);

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
      ids: map['ids'] == null ? null : pulumi.Output.create<List<String>>((map['ids'] as List).cast<String>()),
      nameRegex: map['nameRegex'] == null ? null : pulumi.Output.create<String>(map['nameRegex'] as String),
      outputFile: map['outputFile'] == null ? null : pulumi.Output.create<String>(map['outputFile'] as String),
      scheduledAction: map['scheduledAction'] == null ? null : pulumi.Output.create<String>(map['scheduledAction'] as String),
      scheduledTaskId: map['scheduledTaskId'] == null ? null : pulumi.Output.create<String>(map['scheduledTaskId'] as String),
    );
  }
}

