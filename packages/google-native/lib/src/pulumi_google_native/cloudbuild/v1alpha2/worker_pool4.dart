import 'package:pulumi/pulumi.dart';
import 'network_config_response7.dart';
import 'worker_config_response3.dart';
import 'worker_pool_args3.dart';

/// Creates a `WorkerPool` to run the builds, and returns the new worker pool.
/// Auto-naming is currently not supported for this resource.
class WorkerPool4 extends CustomResource {
  /// Time at which the request to create the `WorkerPool` was received.
  late final Output<String> createTime;

  /// Time at which the request to delete the `WorkerPool` was received.
  late final Output<String> deleteTime;

  /// The resource name of the `WorkerPool`. Format of the name is `projects/{project_id}/workerPools/{worker_pool_id}`, where the value of {worker_pool_id} is provided in the CreateWorkerPool request.
  late final Output<String> name;

  /// Network configuration for the `WorkerPool`.
  late final Output<NetworkConfigResponse7> networkConfig;
  late final Output<String> project;

  /// Immutable. The region where the `WorkerPool` runs. Only "us-central1" is currently supported. Note that `region` cannot be changed once the `WorkerPool` is created.
  late final Output<String> region;

  /// WorkerPool state.
  late final Output<String> state;

  /// Time at which the request to update the `WorkerPool` was received.
  late final Output<String> updateTime;

  /// Worker configuration for the `WorkerPool`.
  late final Output<WorkerConfigResponse3> workerConfig;

  /// Required. Immutable. The ID to use for the `WorkerPool`, which will become the final component of the resource name. This value should be 1-63 characters, and valid characters are /a-z-/.
  late final Output<String> workerPoolId;

  WorkerPool4(
    String name, {
    WorkerPoolArgs3? args,
    CustomResourceOptions? options,
  }) : super(
          'google-native:cloudbuild/v1alpha2:WorkerPool',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.createTime = Output.createUnknown<String>();
    this.deleteTime = Output.createUnknown<String>();
    this.name = Output.createUnknown<String>();
    this.networkConfig = Output.createUnknown<NetworkConfigResponse7>();
    this.project = Output.createUnknown<String>();
    this.region = Output.createUnknown<String>();
    this.state = Output.createUnknown<String>();
    this.updateTime = Output.createUnknown<String>();
    this.workerConfig = Output.createUnknown<WorkerConfigResponse3>();
    this.workerPoolId = Output.createUnknown<String>();
  }
}
