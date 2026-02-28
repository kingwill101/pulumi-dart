import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_devtools_remotebuildexecution_admin_v1alpha_autoscale_response.dart';
import 'google_devtools_remotebuildexecution_admin_v1alpha_worker_config_response.dart';
import 'worker_pool_args.dart';

/// Creates a new worker pool with a specified size and configuration. Returns a long running operation which contains a worker pool on completion. While the long running operation is in progress, any call to `GetWorkerPool` returns a worker pool in state `CREATING`.
class WorkerPool extends pulumi.CustomResource {
  /// The autoscale policy to apply on a pool.
  late final pulumi
      .Output<GoogleDevtoolsRemotebuildexecutionAdminV1alphaAutoscaleResponse>
      autoscale;

  /// Channel specifies the release channel of the pool.
  late final pulumi.Output<String> channel;
  late final pulumi.Output<String> instanceId;

  /// WorkerPool resource name formatted as: `projects/[PROJECT_ID]/instances/[INSTANCE_ID]/workerpools/[POOL_ID]`. name should not be populated when creating a worker pool since it is provided in the `poolId` field.
  late final pulumi.Output<String> name;
  late final pulumi.Output<String> project;

  /// State of the worker pool.
  late final pulumi.Output<String> state;

  /// Specifies the properties, such as machine type and disk size, used for creating workers in a worker pool.
  late final pulumi.Output<
          GoogleDevtoolsRemotebuildexecutionAdminV1alphaWorkerConfigResponse>
      workerConfig;

  /// The desired number of workers in the worker pool. Must be a value between 0 and 15000.
  late final pulumi.Output<String> workerCount;

  /// Creates a new [WorkerPool].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [WorkerPool]. {@macro pulumi_remotebuildexecution_v1alpha_worker_pool_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  WorkerPool(
    String name, {
    WorkerPoolArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'google-native:remotebuildexecution/v1alpha:WorkerPool',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.autoscale = registerOutput<
            GoogleDevtoolsRemotebuildexecutionAdminV1alphaAutoscaleResponse>(
        'autoscale');
    this.channel = registerOutput<String>('channel');
    this.instanceId = registerOutput<String>('instanceId');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.state = registerOutput<String>('state');
    this.workerConfig = registerOutput<
            GoogleDevtoolsRemotebuildexecutionAdminV1alphaWorkerConfigResponse>(
        'workerConfig');
    this.workerCount = registerOutput<String>('workerCount');
  }
}
