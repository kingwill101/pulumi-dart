import 'package:pulumi/pulumi.dart';
import 'job_args4.dart';

/// Creates a job on Dataflow, which is an implementation of Apache Beam running on Google Compute Engine. For more information see
/// the official documentation for
/// [Beam](https://beam.apache.org) and [Dataflow](https://cloud.google.com/dataflow/).
///
/// ## Example Usage
///
///
///
/// ### Streaming Job
///
///
///
/// ## Note on "destroy" / "apply"
///
/// There are many types of Dataflow jobs.  Some Dataflow jobs run constantly, getting new data from (e.g.) a GCS bucket, and outputting data continuously.  Some jobs process a set amount of data then terminate.  All jobs can fail while running due to programming errors or other issues.  In this way, Dataflow jobs are different from most other Google resources.
///
/// The Dataflow resource is considered 'existing' while it is in a nonterminal state.  If it reaches a terminal state (e.g. 'FAILED', 'COMPLETE', 'CANCELLED'), it will be recreated on the next 'apply'.  This is as expected for jobs which run continuously, but may surprise users who use this resource for other kinds of Dataflow jobs.
///
/// A Dataflow job which is 'destroyed' may be "cancelled" or "drained".  If "cancelled", the job terminates - any data written remains where it is, but no new data will be processed.  If "drained", no new data will enter the pipeline, but any data currently in the pipeline will finish being processed.  The default is "drain". When `on_delete` is set to `"drain"` in the configuration, you may experience a long wait for your `pulumi destroy` to complete.
///
/// You can potentially short-circuit the wait by setting `skip_wait_on_job_termination` to `true`, but beware that unless you take active steps to ensure that the job `name` parameter changes between instances, the name will conflict and the launch of the new job will fail. One way to do this is with a random_id resource, for example:
///
///
///
/// ## Import
///
/// Dataflow jobs can be imported using the job `id` e.g.
///
/// * `{{id}}`
///
/// When using the `pulumi import` command, dataflow jobs can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:dataflow/job:Job default {{id}}
/// ```
class Job4 extends CustomResource {
  /// List of experiments that should be used by the job. An example value is `["enable_stackdriver_agent_metrics"]`.
  late final Output<List<String>> additionalExperiments;

  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  late final Output<Map<String, String>> effectiveLabels;

  /// Enable/disable the use of [Streaming Engine](https://cloud.google.com/dataflow/docs/guides/deploying-a-pipeline#streaming-engine) for the job. Note that Streaming Engine is enabled by default for pipelines developed against the Beam SDK for Python v2.21.0 or later when using Python 3.
  late final Output<bool?> enableStreamingEngine;

  /// The configuration for VM IPs.  Options are `"WORKER_IP_PUBLIC"` or `"WORKER_IP_PRIVATE"`.
  late final Output<String?> ipConfiguration;

  /// The unique ID of this job.
  late final Output<String> jobId;

  /// The name for the Cloud KMS key for the job. Key format is: `projects/PROJECT_ID/locations/LOCATION/keyRings/KEY_RING/cryptoKeys/KEY`
  late final Output<String?> kmsKeyName;

  /// User labels to be specified for the job. Keys and values should follow the restrictions
  /// specified in the [labeling restrictions](https://cloud.google.com/compute/docs/labeling-resources#restrictions) page.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration. Please refer to the field `effective_labels` for all of the labels present on the resource.
  late final Output<Map<String, String>?> labels;

  /// The machine type to use for the job.
  late final Output<String?> machineType;

  /// The number of workers permitted to work on the job.  More workers may improve processing speed at additional cost.
  late final Output<int?> maxWorkers;

  /// A unique name for the resource, required by Dataflow.
  late final Output<String> name;

  /// The network to which VMs will be assigned. If it is not provided, "default" will be used.
  late final Output<String?> network;

  /// One of "drain" or "cancel".  Specifies behavior of deletion during `pulumi destroy`.  See above note.
  late final Output<String?> onDelete;

  /// **Template specific** Key/Value pairs to be forwarded to the pipeline's options; keys are
  /// case-sensitive based on the language on which the pipeline is coded, mostly Java.
  /// **Note**: do not configure Dataflow options here in parameters.
  late final Output<Map<String, String>?> parameters;

  /// The project in which the resource belongs. If it is not provided, the provider project is used.
  late final Output<String> project;

  /// The combination of labels configured directly on the resource and default labels configured on the provider.
  late final Output<Map<String, String>> pulumiLabels;

  /// The region in which the created job should run.
  late final Output<String?> region;

  /// The Service Account email used to create the job. This should be just an email e.g. `myserviceaccount@myproject.iam.gserviceaccount.com`. Do not include any `serviceAccount:` or other prefix.
  late final Output<String?> serviceAccountEmail;

  /// If set to `true`, Pulumi will treat `DRAINING` and `CANCELLING` as terminal states when deleting the resource, and will remove the resource from Pulumi state and move on.  See above note.
  late final Output<bool?> skipWaitOnJobTermination;

  /// The current state of the resource, selected from the [JobState enum](https://cloud.google.com/dataflow/docs/reference/rest/v1b3/projects.jobs#Job.JobState)
  late final Output<String> state;

  /// The subnetwork to which VMs will be assigned. Should be of the form "regions/REGION/subnetworks/SUBNETWORK". If the [subnetwork is located in a Shared VPC network](https://cloud.google.com/dataflow/docs/guides/specifying-networks#shared), you must use the complete URL. For example `"googleapis.com/compute/v1/projects/PROJECT_ID/regions/REGION/subnetworks/SUBNET_NAME"`
  late final Output<String?> subnetwork;

  /// A writeable location on GCS for the Dataflow job to dump its temporary data.
  ///
  /// - - -
  late final Output<String> tempGcsLocation;

  /// The GCS path to the Dataflow job template.
  late final Output<String> templateGcsPath;

  /// Only applicable when updating a pipeline. Map of transform name prefixes of the job to be replaced with the corresponding name prefixes of the new job. This field is not used outside of update.
  late final Output<Map<String, String>?> transformNameMapping;

  /// The type of this job, selected from the [JobType enum](https://cloud.google.com/dataflow/docs/reference/rest/v1b3/projects.jobs#Job.JobType)
  late final Output<String> type;

  /// The zone in which the created job should run. If it is not provided, the provider zone is used.
  late final Output<String?> zone;

  Job4(
    String name, {
    JobArgs4? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:dataflow/job:Job',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.additionalExperiments =
        registerOutput<List<String>>('additionalExperiments');
    this.effectiveLabels =
        registerOutput<Map<String, String>>('effectiveLabels');
    this.enableStreamingEngine = registerOutput<bool?>('enableStreamingEngine');
    this.ipConfiguration = registerOutput<String?>('ipConfiguration');
    this.jobId = registerOutput<String>('jobId');
    this.kmsKeyName = registerOutput<String?>('kmsKeyName');
    this.labels = registerOutput<Map<String, String>?>('labels');
    this.machineType = registerOutput<String?>('machineType');
    this.maxWorkers = registerOutput<int?>('maxWorkers');
    this.name = registerOutput<String>('name');
    this.network = registerOutput<String?>('network');
    this.onDelete = registerOutput<String?>('onDelete');
    this.parameters = registerOutput<Map<String, String>?>('parameters');
    this.project = registerOutput<String>('project');
    this.pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels');
    this.region = registerOutput<String?>('region');
    this.serviceAccountEmail = registerOutput<String?>('serviceAccountEmail');
    this.skipWaitOnJobTermination =
        registerOutput<bool?>('skipWaitOnJobTermination');
    this.state = registerOutput<String>('state');
    this.subnetwork = registerOutput<String?>('subnetwork');
    this.tempGcsLocation = registerOutput<String>('tempGcsLocation');
    this.templateGcsPath = registerOutput<String>('templateGcsPath');
    this.transformNameMapping =
        registerOutput<Map<String, String>?>('transformNameMapping');
    this.type = registerOutput<String>('type');
    this.zone = registerOutput<String?>('zone');
  }
}
