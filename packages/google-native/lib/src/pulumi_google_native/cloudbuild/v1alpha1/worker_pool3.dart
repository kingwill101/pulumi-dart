import 'package:pulumi/pulumi.dart';
import 'worker_config_response2.dart';
import 'worker_pool_args2.dart';

/// Creates a `WorkerPool` to run the builds, and returns the new worker pool.
class WorkerPool3 extends CustomResource {
  /// Time at which the request to create the `WorkerPool` was received.
  late final Output<String> createTime;

  /// Time at which the request to delete the `WorkerPool` was received.
  late final Output<String> deleteTime;

  /// User-defined name of the `WorkerPool`.
  late final Output<String> name;
  late final Output<String> project;

  /// List of regions to create the `WorkerPool`. Regions can't be empty. If Cloud Build adds a new GCP region in the future, the existing `WorkerPool` will not be enabled in the new region automatically; you must add the new region to the `regions` field to enable the `WorkerPool` in that region.
  late final Output<List<String>> regions;

  /// The service account used to manage the `WorkerPool`. The service account must have the Compute Instance Admin (Beta) permission at the project level.
  late final Output<String> serviceAccountEmail;

  /// WorkerPool Status.
  late final Output<String> status;

  /// Time at which the request to update the `WorkerPool` was received.
  late final Output<String> updateTime;

  /// Configuration to be used for a creating workers in the `WorkerPool`.
  late final Output<WorkerConfigResponse2> workerConfig;

  /// Total number of workers to be created across all requested regions.
  late final Output<String> workerCount;

  WorkerPool3(
    String name, {
    WorkerPoolArgs2? args,
    CustomResourceOptions? options,
  }) : super(
          'google-native:cloudbuild/v1alpha1:WorkerPool',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.createTime = registerOutput<String>('createTime');
    this.deleteTime = registerOutput<String>('deleteTime');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.regions = registerOutput<List<String>>('regions');
    this.serviceAccountEmail = registerOutput<String>('serviceAccountEmail');
    this.status = registerOutput<String>('status');
    this.updateTime = registerOutput<String>('updateTime');
    this.workerConfig = registerOutput<WorkerConfigResponse2>('workerConfig');
    this.workerCount = registerOutput<String>('workerCount');
  }
}
