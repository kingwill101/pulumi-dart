// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_datalineage_v1_get_run_args_doc}
/// Arguments for getRun.
/// {@endtemplate}
/// {@macro pulumi_datalineage_v1_get_run_args_doc}
class GetRunArgs {
  final pulumi.Input<String> location;
  final pulumi.Input<String> processId;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> runId;

  /// Creates a new [GetRunArgs].
  /// [location] Required.
  /// [processId] Required.
  /// [project] Optional.
  /// [runId] Required.
  GetRunArgs({
    required String location,
    required String processId,
    String? project,
    required String runId,
  }) :
      location = pulumi.Input.asInput<String>(location),
      processId = pulumi.Input.asInput<String>(processId),
      project = pulumi.Input.asOptionalInput<String>(project),
      runId = pulumi.Input.asInput<String>(runId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': location,
      'processId': processId,
      'project': ?project,
      'runId': runId,
    };
  }

  factory GetRunArgs.fromMap(Map<String, dynamic> map) {
    return GetRunArgs(
      location: map['location'] as String,
      processId: map['processId'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      runId: map['runId'] as String,
    );
  }
}

