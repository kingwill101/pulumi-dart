import 'package:pulumi/pulumi.dart';
import 'private_pool_v1_config_response.dart';
import 'worker_pool_args.dart';

/// Creates a `WorkerPool`.
/// Auto-naming is currently not supported for this resource.
class WorkerPool2 extends CustomResource {
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

  /// Legacy Private Pool configuration.
  late final Output<PrivatePoolV1ConfigResponse> privatePoolV1Config;
  late final Output<String> project;

  /// `WorkerPool` state.
  late final Output<String> state;

  /// A unique identifier for the `WorkerPool`.
  late final Output<String> uid;

  /// Time at which the request to update the `WorkerPool` was received.
  late final Output<String> updateTime;

  /// Required. Immutable. The ID to use for the `WorkerPool`, which will become the final component of the resource name. This value should be 1-63 characters, and valid characters are /a-z-/.
  late final Output<String> workerPoolId;

  WorkerPool2(
    String name, {
    WorkerPoolArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'google-native:cloudbuild/v1:WorkerPool',
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
    this.privatePoolV1Config =
        Output.createUnknown<PrivatePoolV1ConfigResponse>();
    this.project = Output.createUnknown<String>();
    this.state = Output.createUnknown<String>();
    this.uid = Output.createUnknown<String>();
    this.updateTime = Output.createUnknown<String>();
    this.workerPoolId = Output.createUnknown<String>();
  }
}
