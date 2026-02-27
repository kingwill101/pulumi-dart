import 'package:pulumi/pulumi.dart';
import '../job_binary_authorization/job_binary_authorization.dart';
import '../job_condition/job_condition.dart';
import '../job_latest_created_execution/job_latest_created_execution.dart';
import '../job_template/job_template.dart';
import '../job_terminal_condition/job_terminal_condition.dart';
import 'job_args2.dart';

/// A Cloud Run Job resource that references a container image which is run to completion.
///
///
/// To get more information about Job, see:
///
/// * [API documentation](https://cloud.google.com/run/docs/reference/rest/v2/projects.locations.jobs)
/// * How-to Guides
/// * [Official Documentation](https://cloud.google.com/run/docs/)
///
/// ## Example Usage
///
/// ### Cloudrunv2 Job Basic
///
///
///
/// ### Cloudrunv2 Job Limits
///
///
///
/// ### Cloudrunv2 Job Sql
///
///
///
/// ### Cloudrunv2 Job Vpcaccess
///
///
///
/// ### Cloudrunv2 Job Directvpc
///
///
///
/// ### Cloudrunv2 Job Secret
///
///
///
/// ### Cloudrunv2 Job Emptydir
///
///
///
/// ### Cloudrunv2 Job Run Job
///
///
///
/// ### Cloudrunv2 Job Multicontainer
///
///
///
/// ### Cloudrunv2 Job Gpu
///
///
///
///
/// ## Import
///
/// Job can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/jobs/{{name}}`
///
/// * `{{project}}/{{location}}/{{name}}`
///
/// * `{{location}}/{{name}}`
///
/// When using the `pulumi import` command, Job can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:cloudrunv2/job:Job default projects/{{project}}/locations/{{location}}/jobs/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:cloudrunv2/job:Job default {{project}}/{{location}}/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:cloudrunv2/job:Job default {{location}}/{{name}}
/// ```
class Job2 extends CustomResource {
  /// Unstructured key value map that may be set by external tools to store and arbitrary metadata. They are not queryable and should be preserved when modifying objects.
  /// Cloud Run API v2 does not support annotations with `run.googleapis.com`, `cloud.googleapis.com`, `serving.knative.dev`, or `autoscaling.knative.dev` namespaces, and they will be rejected on new resources.
  /// All system annotations in v1 now have a corresponding field in v2 Job.
  /// This field follows Kubernetes annotations' namespacing, limits, and rules.
  /// **Note**: This field is non-authoritative, and will only manage the annotations present in your configuration.
  /// Please refer to the field `effective_annotations` for all of the annotations present on the resource.
  late final Output<Map<String, String>?> annotations;

  /// Settings for the Binary Authorization feature.
  /// Structure is documented below.
  late final Output<JobBinaryAuthorization?> binaryAuthorization;

  /// Arbitrary identifier for the API client.
  late final Output<String?> client;

  /// Arbitrary version identifier for the API client.
  late final Output<String?> clientVersion;

  /// The Conditions of all other associated sub-resources. They contain additional diagnostics information in case the Job does not reach its desired state. See comments in reconciling for additional information on `reconciliation` process in Cloud Run.
  /// Structure is documented below.
  late final Output<List<JobCondition>> conditions;

  /// (Output)
  /// Creation timestamp of the execution.
  /// A timestamp in RFC3339 UTC "Zulu" format, with nanosecond resolution and up to nine fractional digits. Examples: "2014-10-02T15:01:23Z" and "2014-10-02T15:01:23.045123456Z".
  late final Output<String> createTime;

  /// Email address of the authenticated creator.
  late final Output<String> creator;

  /// The deletion time.
  late final Output<String> deleteTime;
  late final Output<bool?> deletionProtection;
  late final Output<Map<String, String>> effectiveAnnotations;

  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  late final Output<Map<String, String>> effectiveLabels;

  /// A system-generated fingerprint for this version of the resource. May be used to detect modification conflict during updates.
  late final Output<String> etag;

  /// Number of executions created for this job.
  late final Output<int> executionCount;

  /// For a deleted resource, the time after which it will be permanently deleted.
  late final Output<String> expireTime;

  /// A number that monotonically increases every time the user modifies the desired state.
  late final Output<String> generation;

  /// Unstructured key value map that can be used to organize and categorize objects. User-provided labels are shared with Google's billing system, so they can be used to filter, or break down billing charges by team, component,
  /// environment, state, etc. For more information, visit https://docs.cloud.google.com/resource-manager/docs/creating-managing-labels or https://cloud.google.com/run/docs/configuring/labels.
  /// Cloud Run API v2 does not support labels with `run.googleapis.com`, `cloud.googleapis.com`, `serving.knative.dev`, or `autoscaling.knative.dev` namespaces, and they will be rejected.
  /// All system labels in v1 now have a corresponding field in v2 Job.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  late final Output<Map<String, String>?> labels;

  /// Email address of the last authenticated modifier.
  late final Output<String> lastModifier;

  /// Name of the last created execution.
  /// Structure is documented below.
  late final Output<List<JobLatestCreatedExecution>> latestCreatedExecutions;

  /// The launch stage as defined by [Google Cloud Platform Launch Stages](https://cloud.google.com/products#product-launch-stages). Cloud Run supports ALPHA, BETA, and GA.
  /// If no value is specified, GA is assumed. Set the launch stage to a preview stage on input to allow use of preview features in that stage. On read (or output), describes whether the resource uses preview features.
  /// For example, if ALPHA is provided as input, but only BETA and GA-level features are used, this field will be BETA on output.
  /// Possible values are: `UNIMPLEMENTED`, `PRELAUNCH`, `EARLY_ACCESS`, `ALPHA`, `BETA`, `GA`, `DEPRECATED`.
  late final Output<String> launchStage;

  /// The location of the cloud run job
  late final Output<String> location;

  /// Name of the Job.
  late final Output<String> name;

  /// The generation of this Job. See comments in reconciling for additional information on reconciliation process in Cloud Run.
  late final Output<String> observedGeneration;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final Output<String> project;

  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  late final Output<Map<String, String>> pulumiLabels;

  /// Returns true if the Job is currently being acted upon by the system to bring it into the desired state.
  /// When a new Job is created, or an existing one is updated, Cloud Run will asynchronously perform all necessary steps to bring the Job to the desired state. This process is called reconciliation. While reconciliation is in process, observedGeneration and latest_succeeded_execution, will have transient values that might mismatch the intended state: Once reconciliation is over (and this field is false), there are two possible outcomes: reconciliation succeeded and the state matches the Job, or there was an error, and reconciliation failed. This state can be found in terminalCondition.state.
  /// If reconciliation succeeded, the following fields will match: observedGeneration and generation, latest_succeeded_execution and latestCreatedExecution.
  /// If reconciliation failed, observedGeneration and latest_succeeded_execution will have the state of the last succeeded execution or empty for newly created Job. Additional information on the failure can be found in terminalCondition and conditions
  late final Output<bool> reconciling;

  /// A unique string used as a suffix creating a new execution upon job create or update. The Job will become ready when the execution is successfully completed.
  /// The sum of job name and token length must be fewer than 63 characters.
  late final Output<String?> runExecutionToken;

  /// A unique string used as a suffix creating a new execution upon job create or update. The Job will become ready when the execution is successfully started.
  /// The sum of job name and token length must be fewer than 63 characters.
  late final Output<String?> startExecutionToken;

  /// The template used to create executions for this Job.
  /// Structure is documented below.
  late final Output<JobTemplate> template;

  /// The Condition of this Job, containing its readiness status, and detailed error information in case it did not reach the desired state
  /// Structure is documented below.
  late final Output<List<JobTerminalCondition>> terminalConditions;

  /// Server assigned unique identifier for the Execution. The value is a UUID4 string and guaranteed to remain unchanged until the resource is deleted.
  late final Output<String> uid;

  /// The last-modified time.
  late final Output<String> updateTime;

  Job2(
    String name, {
    JobArgs2? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:cloudrunv2/job:Job',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.annotations = registerOutput<Map<String, String>?>('annotations');
    this.binaryAuthorization =
        registerOutput<JobBinaryAuthorization?>('binaryAuthorization');
    this.client = registerOutput<String?>('client');
    this.clientVersion = registerOutput<String?>('clientVersion');
    this.conditions = registerOutput<List<JobCondition>>('conditions');
    this.createTime = registerOutput<String>('createTime');
    this.creator = registerOutput<String>('creator');
    this.deleteTime = registerOutput<String>('deleteTime');
    this.deletionProtection = registerOutput<bool?>('deletionProtection');
    this.effectiveAnnotations =
        registerOutput<Map<String, String>>('effectiveAnnotations');
    this.effectiveLabels =
        registerOutput<Map<String, String>>('effectiveLabels');
    this.etag = registerOutput<String>('etag');
    this.executionCount = registerOutput<int>('executionCount');
    this.expireTime = registerOutput<String>('expireTime');
    this.generation = registerOutput<String>('generation');
    this.labels = registerOutput<Map<String, String>?>('labels');
    this.lastModifier = registerOutput<String>('lastModifier');
    this.latestCreatedExecutions =
        registerOutput<List<JobLatestCreatedExecution>>(
            'latestCreatedExecutions');
    this.launchStage = registerOutput<String>('launchStage');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.observedGeneration = registerOutput<String>('observedGeneration');
    this.project = registerOutput<String>('project');
    this.pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels');
    this.reconciling = registerOutput<bool>('reconciling');
    this.runExecutionToken = registerOutput<String?>('runExecutionToken');
    this.startExecutionToken = registerOutput<String?>('startExecutionToken');
    this.template = registerOutput<JobTemplate>('template');
    this.terminalConditions =
        registerOutput<List<JobTerminalCondition>>('terminalConditions');
    this.uid = registerOutput<String>('uid');
    this.updateTime = registerOutput<String>('updateTime');
  }
}
