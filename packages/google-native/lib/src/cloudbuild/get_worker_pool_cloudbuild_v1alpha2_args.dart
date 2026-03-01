// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_cloudbuild_v1alpha2_get_worker_pool_cloudbuild_v1alpha2_args_doc}
/// Arguments for getWorkerPool.
/// {@endtemplate}
/// {@macro pulumi_cloudbuild_v1alpha2_get_worker_pool_cloudbuild_v1alpha2_args_doc}
class GetWorkerPoolCloudbuildV1alpha2Args {
  final pulumi.Input<String>? project;
  final pulumi.Input<String> workerPoolId;

  /// Creates a new [GetWorkerPoolCloudbuildV1alpha2Args].
  /// [project] Optional.
  /// [workerPoolId] Required.
  GetWorkerPoolCloudbuildV1alpha2Args({
    String? project,
    required String workerPoolId,
  }) : project = pulumi.Input.asOptionalInput<String>(project),
       workerPoolId = pulumi.Input.asInput<String>(workerPoolId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'project': ?project, 'workerPoolId': workerPoolId};
  }

  factory GetWorkerPoolCloudbuildV1alpha2Args.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetWorkerPoolCloudbuildV1alpha2Args(
      project: map['project'] == null ? null : map['project'] as String,
      workerPoolId: map['workerPoolId'] as String,
    );
  }
}
