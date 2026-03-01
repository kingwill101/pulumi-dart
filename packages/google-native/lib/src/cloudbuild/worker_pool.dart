import 'package:pulumi/pulumi.dart' as pulumi;
import 'private_pool_v1_config_response.dart';
import 'worker_pool_args.dart';

/// Creates a `WorkerPool`.
/// Auto-naming is currently not supported for this resource.
class WorkerPool extends pulumi.CustomResource {
  /// User specified annotations. See https://google.aip.dev/128#annotations for more details such as format and size limitations.
  late final pulumi.Output<Map<String, String>> annotations;

  /// Time at which the request to create the `WorkerPool` was received.
  late final pulumi.Output<String> createTime;

  /// Time at which the request to delete the `WorkerPool` was received.
  late final pulumi.Output<String> deleteTime;

  /// A user-specified, human-readable name for the `WorkerPool`. If provided, this value must be 1-63 characters.
  late final pulumi.Output<String> displayName;

  /// Checksum computed by the server. May be sent on update and delete requests to ensure that the client has an up-to-date value before proceeding.
  late final pulumi.Output<String> etag;
  late final pulumi.Output<String> location;

  /// The resource name of the `WorkerPool`, with format `projects/{project}/locations/{location}/workerPools/{worker_pool}`. The value of `{worker_pool}` is provided by `worker_pool_id` in `CreateWorkerPool` request and the value of `{location}` is determined by the endpoint accessed.
  late final pulumi.Output<String> name;

  /// Legacy Private Pool configuration.
  late final pulumi.Output<PrivatePoolV1ConfigResponse> privatePoolV1Config;
  late final pulumi.Output<String> project;

  /// `WorkerPool` state.
  late final pulumi.Output<String> state;

  /// A unique identifier for the `WorkerPool`.
  late final pulumi.Output<String> uid;

  /// Time at which the request to update the `WorkerPool` was received.
  late final pulumi.Output<String> updateTime;

  /// Required. Immutable. The ID to use for the `WorkerPool`, which will become the final component of the resource name. This value should be 1-63 characters, and valid characters are /a-z-/.
  late final pulumi.Output<String> workerPoolId;

  /// Creates a new [WorkerPool].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [WorkerPool]. {@macro pulumi_cloudbuild_v1_worker_pool_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  WorkerPool(
    String name, {
    WorkerPoolArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'google-native:cloudbuild/v1:WorkerPool',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    this.annotations = registerOutput<Map<String, String>>('annotations');
    this.createTime = registerOutput<String>('createTime');
    this.deleteTime = registerOutput<String>('deleteTime');
    this.displayName = registerOutput<String>('displayName');
    this.etag = registerOutput<String>('etag');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.privatePoolV1Config = registerOutput<PrivatePoolV1ConfigResponse>(
      'privatePoolV1Config',
    );
    this.project = registerOutput<String>('project');
    this.state = registerOutput<String>('state');
    this.uid = registerOutput<String>('uid');
    this.updateTime = registerOutput<String>('updateTime');
    this.workerPoolId = registerOutput<String>('workerPoolId');
  }
}
