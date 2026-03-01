// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_cloudbuild_v1beta1_get_worker_pool_cloudbuild_v1beta1_args_doc}
/// Arguments for getWorkerPool.
/// {@endtemplate}
/// {@macro pulumi_cloudbuild_v1beta1_get_worker_pool_cloudbuild_v1beta1_args_doc}
class GetWorkerPoolCloudbuildV1beta1Args {
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> workerPoolId;

  /// Creates a new [GetWorkerPoolCloudbuildV1beta1Args].
  /// [location] Required.
  /// [project] Optional.
  /// [workerPoolId] Required.
  GetWorkerPoolCloudbuildV1beta1Args({
    required String location,
    String? project,
    required String workerPoolId,
  }) : location = pulumi.Input.asInput<String>(location),
       project = pulumi.Input.asOptionalInput<String>(project),
       workerPoolId = pulumi.Input.asInput<String>(workerPoolId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': location,
      'project': ?project,
      'workerPoolId': workerPoolId,
    };
  }

  factory GetWorkerPoolCloudbuildV1beta1Args.fromMap(Map<String, dynamic> map) {
    return GetWorkerPoolCloudbuildV1beta1Args(
      location: map['location'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      workerPoolId: map['workerPoolId'] as String,
    );
  }
}
