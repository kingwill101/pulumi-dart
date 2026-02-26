import 'package:pulumi/pulumi.dart';
import 'google_devtools_remotebuildexecution_admin_v1alpha_autoscale_response.dart';
import 'google_devtools_remotebuildexecution_admin_v1alpha_worker_config_response.dart';
import 'worker_pool_args5.dart';

/// Creates a new worker pool with a specified size and configuration. Returns a long running operation which contains a worker pool on completion. While the long running operation is in progress, any call to `GetWorkerPool` returns a worker pool in state `CREATING`.
class WorkerPool6 extends CustomResource {
  /// The autoscale policy to apply on a pool.
  late final Output<
          GoogleDevtoolsRemotebuildexecutionAdminV1alphaAutoscaleResponse>
      autoscale;

  /// Channel specifies the release channel of the pool.
  late final Output<String> channel;
  late final Output<String> instanceId;

  /// WorkerPool resource name formatted as: `projects/[PROJECT_ID]/instances/[INSTANCE_ID]/workerpools/[POOL_ID]`. name should not be populated when creating a worker pool since it is provided in the `poolId` field.
  late final Output<String> name;
  late final Output<String> project;

  /// State of the worker pool.
  late final Output<String> state;

  /// Specifies the properties, such as machine type and disk size, used for creating workers in a worker pool.
  late final Output<
          GoogleDevtoolsRemotebuildexecutionAdminV1alphaWorkerConfigResponse>
      workerConfig;

  /// The desired number of workers in the worker pool. Must be a value between 0 and 15000.
  late final Output<String> workerCount;

  WorkerPool6(
    String name, {
    WorkerPoolArgs5? args,
    CustomResourceOptions? options,
  }) : super(
          'google-native:remotebuildexecution/v1alpha:WorkerPool',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.autoscale = Output.createUnknown<
        GoogleDevtoolsRemotebuildexecutionAdminV1alphaAutoscaleResponse>();
    this.channel = Output.createUnknown<String>();
    this.instanceId = Output.createUnknown<String>();
    this.name = Output.createUnknown<String>();
    this.project = Output.createUnknown<String>();
    this.state = Output.createUnknown<String>();
    this.workerConfig = Output.createUnknown<
        GoogleDevtoolsRemotebuildexecutionAdminV1alphaWorkerConfigResponse>();
    this.workerCount = Output.createUnknown<String>();
  }
}
