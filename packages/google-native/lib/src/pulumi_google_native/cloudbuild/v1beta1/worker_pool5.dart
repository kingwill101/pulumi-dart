import 'package:pulumi/pulumi.dart';
import 'network_config_response8.dart';
import 'worker_config_response4.dart';
import 'worker_pool_args4.dart';

/// Creates a `WorkerPool` to run the builds, and returns the new worker pool. NOTE: As of now, this method returns an `Operation` that is always complete.
/// Auto-naming is currently not supported for this resource.
class WorkerPool5 extends CustomResource {
  /// User specified annotations. See https://google.aip.dev/128#annotations for more details such as format and size limitations.
  late final Output<Map<String, String>> annotations;

  /// Time at which the request to create the `WorkerPool` was received.
  late final Output<String> createTime;

  /// Time at which the request to delete the `WorkerPool` was received.
  late final Output<String> deleteTime;

  /// A user-specified, human-readable name for the `WorkerPool`. If provided, this value must be 1-63 characters.
  late final Output<String> displayName;

  /// Checksum computed by the server. May be sent on update and delete requests to ensure that the client has an up-to-date value before proceeding.
  late final Output<String> etag;
  late final Output<String> location;

  /// The resource name of the `WorkerPool`, with format `projects/{project}/locations/{location}/workerPools/{worker_pool}`. The value of `{worker_pool}` is provided by `worker_pool_id` in `CreateWorkerPool` request and the value of `{location}` is determined by the endpoint accessed.
  late final Output<String> name;

  /// Network configuration for the `WorkerPool`.
  late final Output<NetworkConfigResponse8> networkConfig;
  late final Output<String> project;

  /// `WorkerPool` state.
  late final Output<String> state;

  /// A unique identifier for the `WorkerPool`.
  late final Output<String> uid;

  /// Time at which the request to update the `WorkerPool` was received.
  late final Output<String> updateTime;

  /// Worker configuration for the `WorkerPool`.
  late final Output<WorkerConfigResponse4> workerConfig;

  /// Required. Immutable. The ID to use for the `WorkerPool`, which will become the final component of the resource name. This value should be 1-63 characters, and valid characters are /a-z-/.
  late final Output<String> workerPoolId;

  WorkerPool5(
    String name, {
    WorkerPoolArgs4? args,
    CustomResourceOptions? options,
  }) : super(
          'google-native:cloudbuild/v1beta1:WorkerPool',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.annotations = Output.createUnknown<Map<String, String>>();
    this.createTime = Output.createUnknown<String>();
    this.deleteTime = Output.createUnknown<String>();
    this.displayName = Output.createUnknown<String>();
    this.etag = Output.createUnknown<String>();
    this.location = Output.createUnknown<String>();
    this.name = Output.createUnknown<String>();
    this.networkConfig = Output.createUnknown<NetworkConfigResponse8>();
    this.project = Output.createUnknown<String>();
    this.state = Output.createUnknown<String>();
    this.uid = Output.createUnknown<String>();
    this.updateTime = Output.createUnknown<String>();
    this.workerConfig = Output.createUnknown<WorkerConfigResponse4>();
    this.workerPoolId = Output.createUnknown<String>();
  }
}
