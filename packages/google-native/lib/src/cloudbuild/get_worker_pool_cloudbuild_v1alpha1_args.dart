// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_cloudbuild_v1alpha1_get_worker_pool_cloudbuild_v1alpha1_args_doc}
/// Arguments for getWorkerPool.
/// {@endtemplate}
/// {@macro pulumi_cloudbuild_v1alpha1_get_worker_pool_cloudbuild_v1alpha1_args_doc}
class GetWorkerPoolCloudbuildV1alpha1Args {
  final pulumi.Input<String>? project;
  final pulumi.Input<String> workerPoolId;

  /// Creates a new [GetWorkerPoolCloudbuildV1alpha1Args].
  /// [project] Optional.
  /// [workerPoolId] Required.
  GetWorkerPoolCloudbuildV1alpha1Args({
    String? project,
    required String workerPoolId,
  })  : project = pulumi.Input.asOptionalInput<String>(project),
        workerPoolId = pulumi.Input.asInput<String>(workerPoolId);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['workerPoolId'] = workerPoolId;
    return map;
  }

  factory GetWorkerPoolCloudbuildV1alpha1Args.fromMap(
      Map<String, dynamic> map) {
    return GetWorkerPoolCloudbuildV1alpha1Args(
      project: map['project'] == null ? null : map['project'] as String,
      workerPoolId: map['workerPoolId'] as String,
    );
  }
}
