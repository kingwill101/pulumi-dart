// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_dataplex_v1_get_task_args_doc}
/// Arguments for getTask.
/// {@endtemplate}
/// {@macro pulumi_dataplex_v1_get_task_args_doc}
class GetTaskArgs {
  final pulumi.Input<String> lakeId;
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> taskId;

  /// Creates a new [GetTaskArgs].
  /// [lakeId] Required.
  /// [location] Required.
  /// [project] Optional.
  /// [taskId] Required.
  GetTaskArgs({
    required String lakeId,
    required String location,
    String? project,
    required String taskId,
  }) : lakeId = pulumi.Input.asInput<String>(lakeId),
       location = pulumi.Input.asInput<String>(location),
       project = pulumi.Input.asOptionalInput<String>(project),
       taskId = pulumi.Input.asInput<String>(taskId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'lakeId': lakeId,
      'location': location,
      'project': ?project,
      'taskId': taskId,
    };
  }

  factory GetTaskArgs.fromMap(Map<String, dynamic> map) {
    return GetTaskArgs(
      lakeId: map['lakeId'] as String,
      location: map['location'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      taskId: map['taskId'] as String,
    );
  }
}
