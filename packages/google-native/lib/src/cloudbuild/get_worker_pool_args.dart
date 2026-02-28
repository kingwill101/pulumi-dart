// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_cloudbuild_v1_get_worker_pool_args_doc}
/// Arguments for getWorkerPool.
/// {@endtemplate}
/// {@macro pulumi_cloudbuild_v1_get_worker_pool_args_doc}
class GetWorkerPoolArgs {
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> workerPoolId;

  /// Creates a new [GetWorkerPoolArgs].
  /// [location] Required.
  /// [project] Optional.
  /// [workerPoolId] Required.
  GetWorkerPoolArgs({
    required String location,
    String? project,
    required String workerPoolId,
  })  : location = pulumi.Input.asInput<String>(location),
        project = pulumi.Input.asOptionalInput<String>(project),
        workerPoolId = pulumi.Input.asInput<String>(workerPoolId);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['location'] = location;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['workerPoolId'] = workerPoolId;
    return map;
  }

  factory GetWorkerPoolArgs.fromMap(Map<String, dynamic> map) {
    return GetWorkerPoolArgs(
      location: map['location'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      workerPoolId: map['workerPoolId'] as String,
    );
  }
}
