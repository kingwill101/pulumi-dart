// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_remotebuildexecution_v1alpha_get_worker_pool_args_doc}
/// Arguments for getWorkerPool.
/// {@endtemplate}
/// {@macro pulumi_remotebuildexecution_v1alpha_get_worker_pool_args_doc}
class GetWorkerPoolArgs {
  final pulumi.Input<String> instanceId;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> workerpoolId;

  /// Creates a new [GetWorkerPoolArgs].
  /// [instanceId] Required.
  /// [project] Optional.
  /// [workerpoolId] Required.
  GetWorkerPoolArgs({
    required String instanceId,
    String? project,
    required String workerpoolId,
  }) : instanceId = pulumi.Input.asInput<String>(instanceId),
       project = pulumi.Input.asOptionalInput<String>(project),
       workerpoolId = pulumi.Input.asInput<String>(workerpoolId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'instanceId': instanceId,
      'project': ?project,
      'workerpoolId': workerpoolId,
    };
  }

  factory GetWorkerPoolArgs.fromMap(Map<String, dynamic> map) {
    return GetWorkerPoolArgs(
      instanceId: map['instanceId'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      workerpoolId: map['workerpoolId'] as String,
    );
  }
}
