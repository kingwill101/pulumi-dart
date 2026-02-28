// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_aiplatform_v1_get_run_args_doc}
/// Arguments for getRun.
/// {@endtemplate}
/// {@macro pulumi_aiplatform_v1_get_run_args_doc}
class GetRunArgs {
  final pulumi.Input<String> experimentId;
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> runId;
  final pulumi.Input<String> tensorboardId;

  /// Creates a new [GetRunArgs].
  /// [experimentId] Required.
  /// [location] Required.
  /// [project] Optional.
  /// [runId] Required.
  /// [tensorboardId] Required.
  GetRunArgs({
    required String experimentId,
    required String location,
    String? project,
    required String runId,
    required String tensorboardId,
  }) :
      experimentId = pulumi.Input.asInput<String>(experimentId),
      location = pulumi.Input.asInput<String>(location),
      project = pulumi.Input.asOptionalInput<String>(project),
      runId = pulumi.Input.asInput<String>(runId),
      tensorboardId = pulumi.Input.asInput<String>(tensorboardId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'experimentId': experimentId,
      'location': location,
      'project': ?project,
      'runId': runId,
      'tensorboardId': tensorboardId,
    };
  }

  factory GetRunArgs.fromMap(Map<String, dynamic> map) {
    return GetRunArgs(
      experimentId: map['experimentId'] as String,
      location: map['location'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      runId: map['runId'] as String,
      tensorboardId: map['tensorboardId'] as String,
    );
  }
}

