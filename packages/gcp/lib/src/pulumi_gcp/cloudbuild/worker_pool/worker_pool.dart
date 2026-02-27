import 'package:pulumi/pulumi.dart';
import '../worker_pool_network_config/worker_pool_network_config.dart';
import '../worker_pool_private_service_connect/worker_pool_private_service_connect.dart';
import '../worker_pool_worker_config/worker_pool_worker_config.dart';
import 'worker_pool_args.dart';

/// Definition of custom Cloud Build WorkerPools for running jobs with custom configuration and custom networking.
///
/// ## Example Usage
///
///
///
/// ### Network Config
///
///
///
/// ## Import
///
/// WorkerPool can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/workerPools/{{name}}`
///
/// * `{{project}}/{{location}}/{{name}}`
///
/// * `{{location}}/{{name}}`
///
/// When using the `pulumi import` command, WorkerPool can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:cloudbuild/workerPool:WorkerPool default projects/{{project}}/locations/{{location}}/workerPools/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:cloudbuild/workerPool:WorkerPool default {{project}}/{{location}}/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:cloudbuild/workerPool:WorkerPool default {{location}}/{{name}}
/// ```
class WorkerPool extends CustomResource {
  /// User specified annotations. See https://google.aip.dev/128#annotations for more details such as format and size limitations.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the annotations present in your configuration.
  /// Please refer to the field `effective_annotations` for all of the annotations present on the resource.
  late final Output<Map<String, String>?> annotations;

  /// Output only. Time at which the request to create the `WorkerPool` was received.
  late final Output<String> createTime;

  /// Output only. Time at which the request to delete the `WorkerPool` was received.
  late final Output<String> deleteTime;

  /// A user-specified, human-readable name for the `WorkerPool`. If provided, this value must be 1-63 characters.
  late final Output<String?> displayName;
  late final Output<Map<String, String>> effectiveAnnotations;

  /// The location for the resource
  late final Output<String> location;

  /// User-defined name of the `WorkerPool`.
  ///
  ///
  /// - - -
  late final Output<String> name;

  /// Network configuration for the `WorkerPool`. Structure is documented below.
  late final Output<WorkerPoolNetworkConfig?> networkConfig;

  /// Private Service Connect configuration for the pool.
  late final Output<WorkerPoolPrivateServiceConnect?> privateServiceConnect;

  /// The project for the resource
  late final Output<String> project;

  /// Output only. WorkerPool state. Possible values: STATE_UNSPECIFIED, PENDING, APPROVED, REJECTED, CANCELLED
  late final Output<String> state;

  /// Output only. A unique identifier for the `WorkerPool`.
  late final Output<String> uid;

  /// Output only. Time at which the request to update the `WorkerPool` was received.
  late final Output<String> updateTime;

  /// Configuration to be used for a creating workers in the `WorkerPool`. Structure is documented below.
  late final Output<WorkerPoolWorkerConfig> workerConfig;

  WorkerPool(
    String name, {
    WorkerPoolArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:cloudbuild/workerPool:WorkerPool',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.annotations = registerOutput<Map<String, String>?>('annotations');
    this.createTime = registerOutput<String>('createTime');
    this.deleteTime = registerOutput<String>('deleteTime');
    this.displayName = registerOutput<String?>('displayName');
    this.effectiveAnnotations =
        registerOutput<Map<String, String>>('effectiveAnnotations');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.networkConfig =
        registerOutput<WorkerPoolNetworkConfig?>('networkConfig');
    this.privateServiceConnect =
        registerOutput<WorkerPoolPrivateServiceConnect?>(
            'privateServiceConnect');
    this.project = registerOutput<String>('project');
    this.state = registerOutput<String>('state');
    this.uid = registerOutput<String>('uid');
    this.updateTime = registerOutput<String>('updateTime');
    this.workerConfig = registerOutput<WorkerPoolWorkerConfig>('workerConfig');
  }
}
