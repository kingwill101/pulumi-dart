import 'package:pulumi/pulumi.dart';
import '../worker_pool_binary_authorization/worker_pool_binary_authorization.dart';
import '../worker_pool_condition/worker_pool_condition.dart';
import '../worker_pool_instance_split/worker_pool_instance_split.dart';
import '../worker_pool_instance_split_status/worker_pool_instance_split_status.dart';
import '../worker_pool_scaling/worker_pool_scaling.dart';
import '../worker_pool_template/worker_pool_template.dart';
import '../worker_pool_terminal_condition/worker_pool_terminal_condition.dart';
import 'worker_pool_args2.dart';

/// WorkerPool acts as a top-level container that manages a set of configurations and revision templates which implement a pull-based workload. WorkerPool exists to provide a singular abstraction which can be access controlled, reasoned about, and which encapsulates software lifecycle decisions such as rollout policy and team resource ownership.
///
///
/// To get more information about WorkerPool, see:
///
/// * [API documentation](https://cloud.google.com/run/docs/reference/rest/v2/projects.locations.workerPools)
/// * How-to Guides
/// * [Official Documentation](https://cloud.google.com/run/docs/)
///
/// ## Example Usage
///
/// ### Cloudrunv2 Worker Pool Basic
///
///
///
/// ### Cloudrunv2 Worker Pool Basic Depends On
///
///
///
/// ### Cloudrunv2 Worker Pool Limits
///
///
///
/// ### Cloudrunv2 Worker Pool Sql
///
///
///
/// ### Cloudrunv2 Worker Pool Directvpc
///
///
///
/// ### Cloudrunv2 Worker Pool Gpu
///
///
///
/// ### Cloudrunv2 Worker Pool Secret
///
///
///
/// ### Cloudrunv2 Worker Pool Multicontainer
///
///
///
/// ### Cloudrunv2 Worker Pool Mount Gcs
///
///
///
/// ### Cloudrunv2 Worker Pool Mount Nfs
///
///
///
/// ### Cloudrunv2 Worker Pool Startup Liveness Probe
///
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
/// $ pulumi import gcp:cloudrunv2/workerPool:WorkerPool default projects/{{project}}/locations/{{location}}/workerPools/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:cloudrunv2/workerPool:WorkerPool default {{project}}/{{location}}/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:cloudrunv2/workerPool:WorkerPool default {{location}}/{{name}}
/// ```
class WorkerPool2 extends CustomResource {
  /// Unstructured key value map that may be set by external tools to store and arbitrary metadata. They are not queryable and should be preserved when modifying objects.
  /// Cloud Run API v2 does not support annotations with `run.googleapis.com`, `cloud.googleapis.com`, `serving.knative.dev`, or `autoscaling.knative.dev` namespaces, and they will be rejected in new resources.
  /// All system annotations in v1 now have a corresponding field in v2 WorkerPool.
  /// This field follows Kubernetes annotations' namespacing, limits, and rules.
  /// **Note**: This field is non-authoritative, and will only manage the annotations present in your configuration.
  /// Please refer to the field `effective_annotations` for all of the annotations present on the resource.
  late final Output<Map<String, String>?> annotations;

  /// Settings for the Binary Authorization feature.
  /// Structure is documented below.
  late final Output<WorkerPoolBinaryAuthorization?> binaryAuthorization;

  /// Arbitrary identifier for the API client.
  late final Output<String?> client;

  /// Arbitrary version identifier for the API client.
  late final Output<String?> clientVersion;

  /// The Conditions of all other associated sub-resources. They contain additional diagnostics information in case the WorkerPool does not reach its Serving state. See comments in reconciling for additional information on reconciliation process in Cloud Run.
  /// Structure is documented below.
  late final Output<List<WorkerPoolCondition>> conditions;

  /// The creation time.
  late final Output<String> createTime;

  /// Email address of the authenticated creator.
  late final Output<String> creator;

  /// (Optional, Deprecated)
  /// One or more custom audiences that you want this worker pool to support. Specify each custom audience as the full URL in a string. The custom audiences are encoded in the token and used to authenticate requests.
  /// For more information, see https://cloud.google.com/run/docs/configuring/custom-audiences.
  ///
  /// > **Warning:** `custom_audiences` is deprecated since it is not applicable to WorkerPool resource and will be removed in a future major release.
  late final Output<List<String>?> customAudiences;

  /// The deletion time.
  late final Output<String> deleteTime;
  late final Output<bool?> deletionProtection;

  /// User-provided description of the WorkerPool. This field currently has a 512-character limit.
  late final Output<String?> description;
  late final Output<Map<String, String>> effectiveAnnotations;

  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  late final Output<Map<String, String>> effectiveLabels;

  /// A system-generated fingerprint for this version of the resource. May be used to detect modification conflict during updates.
  late final Output<String> etag;

  /// For a deleted resource, the time after which it will be permanently deleted.
  late final Output<String> expireTime;

  /// A number that monotonically increases every time the user modifies the desired state. Please note that unlike v1, this is an int64 value. As with most Google APIs, its JSON representation will be a string instead of an integer.
  late final Output<String> generation;

  /// Detailed status information for corresponding instance splits. See comments in reconciling for additional information on reconciliation process in Cloud Run.
  /// Structure is documented below.
  late final Output<List<WorkerPoolInstanceSplitStatus>> instanceSplitStatuses;

  /// Specifies how to distribute instances over a collection of Revisions belonging to the WorkerPool. If instance split is empty or not provided, defaults to 100% instances assigned to the latest Ready Revision.
  /// Structure is documented below.
  late final Output<List<WorkerPoolInstanceSplit>> instanceSplits;

  /// Unstructured key value map that can be used to organize and categorize objects. User-provided labels are shared with Google's billing system, so they can be used to filter, or break down billing charges by team, component,
  /// environment, state, etc. For more information, visit https://docs.cloud.google.com/resource-manager/docs/creating-managing-labels or https://cloud.google.com/run/docs/configuring/labels.
  /// Cloud Run API v2 does not support labels with  `run.googleapis.com`, `cloud.googleapis.com`, `serving.knative.dev`, or `autoscaling.knative.dev` namespaces, and they will be rejected.
  /// All system labels in v1 now have a corresponding field in v2 WorkerPool.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  late final Output<Map<String, String>?> labels;

  /// Email address of the last authenticated modifier.
  late final Output<String> lastModifier;

  /// Name of the last created revision. See comments in reconciling for additional information on reconciliation process in Cloud Run.
  late final Output<String> latestCreatedRevision;

  /// Name of the latest revision that is serving traffic. See comments in reconciling for additional information on reconciliation process in Cloud Run.
  late final Output<String> latestReadyRevision;

  /// The launch stage as defined by [Google Cloud Platform Launch Stages](https://cloud.google.com/products#product-launch-stages). Cloud Run supports ALPHA, BETA, and GA.
  /// If no value is specified, GA is assumed. Set the launch stage to a preview stage on input to allow use of preview features in that stage. On read (or output), describes whether the resource uses preview features.
  /// For example, if ALPHA is provided as input, but only BETA and GA-level features are used, this field will be BETA on output.
  /// Possible values are: `UNIMPLEMENTED`, `PRELAUNCH`, `EARLY_ACCESS`, `ALPHA`, `BETA`, `GA`, `DEPRECATED`.
  late final Output<String> launchStage;

  /// The location of the cloud run worker pool
  late final Output<String> location;

  /// Name of the WorkerPool.
  late final Output<String> name;

  /// The generation of this WorkerPool currently serving traffic. See comments in reconciling for additional information on reconciliation process in Cloud Run. Please note that unlike v1, this is an int64 value. As with most Google APIs, its JSON representation will be a string instead of an integer.
  late final Output<String> observedGeneration;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final Output<String> project;

  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  late final Output<Map<String, String>> pulumiLabels;

  /// Returns true if the WorkerPool is currently being acted upon by the system to bring it into the desired state.
  /// When a new WorkerPool is created, or an existing one is updated, Cloud Run will asynchronously perform all necessary steps to bring the WorkerPool to the desired serving state. This process is called reconciliation. While reconciliation is in process, observedGeneration, latest_ready_revison, trafficStatuses, and uri will have transient values that might mismatch the intended state: Once reconciliation is over (and this field is false), there are two possible outcomes: reconciliation succeeded and the serving state matches the WorkerPool, or there was an error, and reconciliation failed. This state can be found in terminalCondition.state.
  /// If reconciliation succeeded, the following fields will match: traffic and trafficStatuses, observedGeneration and generation, latestReadyRevision and latestCreatedRevision.
  /// If reconciliation failed, trafficStatuses, observedGeneration, and latestReadyRevision will have the state of the last serving revision, or empty for newly created WorkerPools. Additional information on the failure can be found in terminalCondition and conditions.
  late final Output<bool> reconciling;

  /// Scaling settings that apply to the worker pool.
  /// Structure is documented below.
  late final Output<WorkerPoolScaling> scaling;

  /// The template used to create revisions for this WorkerPool.
  /// Structure is documented below.
  late final Output<WorkerPoolTemplate> template;

  /// The Condition of this WorkerPool, containing its readiness status, and detailed error information in case it did not reach a serving state. See comments in reconciling for additional information on reconciliation process in Cloud Run.
  /// Structure is documented below.
  late final Output<List<WorkerPoolTerminalCondition>> terminalConditions;

  /// Server assigned unique identifier for the trigger. The value is a UUID4 string and guaranteed to remain unchanged until the resource is deleted.
  late final Output<String> uid;

  /// The last-modified time.
  late final Output<String> updateTime;

  WorkerPool2(
    String name, {
    WorkerPoolArgs2? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:cloudrunv2/workerPool:WorkerPool',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.annotations = registerOutput<Map<String, String>?>('annotations');
    this.binaryAuthorization =
        registerOutput<WorkerPoolBinaryAuthorization?>('binaryAuthorization');
    this.client = registerOutput<String?>('client');
    this.clientVersion = registerOutput<String?>('clientVersion');
    this.conditions = registerOutput<List<WorkerPoolCondition>>('conditions');
    this.createTime = registerOutput<String>('createTime');
    this.creator = registerOutput<String>('creator');
    this.customAudiences = registerOutput<List<String>?>('customAudiences');
    this.deleteTime = registerOutput<String>('deleteTime');
    this.deletionProtection = registerOutput<bool?>('deletionProtection');
    this.description = registerOutput<String?>('description');
    this.effectiveAnnotations =
        registerOutput<Map<String, String>>('effectiveAnnotations');
    this.effectiveLabels =
        registerOutput<Map<String, String>>('effectiveLabels');
    this.etag = registerOutput<String>('etag');
    this.expireTime = registerOutput<String>('expireTime');
    this.generation = registerOutput<String>('generation');
    this.instanceSplitStatuses =
        registerOutput<List<WorkerPoolInstanceSplitStatus>>(
            'instanceSplitStatuses');
    this.instanceSplits =
        registerOutput<List<WorkerPoolInstanceSplit>>('instanceSplits');
    this.labels = registerOutput<Map<String, String>?>('labels');
    this.lastModifier = registerOutput<String>('lastModifier');
    this.latestCreatedRevision =
        registerOutput<String>('latestCreatedRevision');
    this.latestReadyRevision = registerOutput<String>('latestReadyRevision');
    this.launchStage = registerOutput<String>('launchStage');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.observedGeneration = registerOutput<String>('observedGeneration');
    this.project = registerOutput<String>('project');
    this.pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels');
    this.reconciling = registerOutput<bool>('reconciling');
    this.scaling = registerOutput<WorkerPoolScaling>('scaling');
    this.template = registerOutput<WorkerPoolTemplate>('template');
    this.terminalConditions =
        registerOutput<List<WorkerPoolTerminalCondition>>('terminalConditions');
    this.uid = registerOutput<String>('uid');
    this.updateTime = registerOutput<String>('updateTime');
  }
}
