import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_aiplatform_v1_encryption_spec_response.dart';
import 'google_cloud_aiplatform_v1_pipeline_job_detail_response.dart';
import 'google_cloud_aiplatform_v1_pipeline_job_runtime_config_response.dart';
import 'google_cloud_aiplatform_v1_pipeline_template_metadata_response.dart';
import 'google_rpc_status_response.dart';
import 'pipeline_job_args.dart';

/// Creates a PipelineJob. A PipelineJob will run immediately when created.
/// Auto-naming is currently not supported for this resource.
class PipelineJob extends pulumi.CustomResource {
  /// Pipeline creation time.
  late final pulumi.Output<String> createTime;

  /// The display name of the Pipeline. The name can be up to 128 characters long and can consist of any UTF-8 characters.
  late final pulumi.Output<String> displayName;

  /// Customer-managed encryption key spec for a pipelineJob. If set, this PipelineJob and all of its sub-resources will be secured by this key.
  late final pulumi.Output<GoogleCloudAiplatformV1EncryptionSpecResponse>
      encryptionSpec;

  /// Pipeline end time.
  late final pulumi.Output<String> endTime;

  /// The error that occurred during pipeline execution. Only populated when the pipeline's state is FAILED or CANCELLED.
  late final pulumi.Output<GoogleRpcStatusResponse> error;

  /// The details of pipeline run. Not available in the list view.
  late final pulumi.Output<GoogleCloudAiplatformV1PipelineJobDetailResponse>
      jobDetail;

  /// The labels with user-defined metadata to organize PipelineJob. Label keys and values can be no longer than 64 characters (Unicode codepoints), can only contain lowercase letters, numeric characters, underscores and dashes. International characters are allowed. See https://goo.gl/xmQnxf for more information and examples of labels. Note there is some reserved label key for Vertex AI Pipelines. - `vertex-ai-pipelines-run-billing-id`, user set value will get overrided.
  late final pulumi.Output<Map<String, String>> labels;
  late final pulumi.Output<String> location;

  /// The resource name of the PipelineJob.
  late final pulumi.Output<String> name;

  /// The full name of the Compute Engine [network](/compute/docs/networks-and-firewalls#networks) to which the Pipeline Job's workload should be peered. For example, `projects/12345/global/networks/myVPC`. [Format](/compute/docs/reference/rest/v1/networks/insert) is of the form `projects/{project}/global/networks/{network}`. Where {project} is a project number, as in `12345`, and {network} is a network name. Private services access must already be configured for the network. Pipeline job will apply the network configuration to the Google Cloud resources being launched, if applied, such as Vertex AI Training or Dataflow job. If left unspecified, the workload is not peered with any network.
  late final pulumi.Output<String> network;

  /// The ID to use for the PipelineJob, which will become the final component of the PipelineJob name. If not provided, an ID will be automatically generated. This value should be less than 128 characters, and valid characters are `/a-z-/`.
  late final pulumi.Output<String?> pipelineJobId;

  /// The spec of the pipeline.
  late final pulumi.Output<Map<String, String>> pipelineSpec;
  late final pulumi.Output<String> project;

  /// A list of names for the reserved ip ranges under the VPC network that can be used for this Pipeline Job's workload. If set, we will deploy the Pipeline Job's workload within the provided ip ranges. Otherwise, the job will be deployed to any ip ranges under the provided VPC network. Example: ['vertex-ai-ip-range'].
  late final pulumi.Output<List<String>> reservedIpRanges;

  /// Runtime config of the pipeline.
  late final pulumi
      .Output<GoogleCloudAiplatformV1PipelineJobRuntimeConfigResponse>
      runtimeConfig;

  /// The schedule resource name. Only returned if the Pipeline is created by Schedule API.
  late final pulumi.Output<String> scheduleName;

  /// The service account that the pipeline workload runs as. If not specified, the Compute Engine default service account in the project will be used. See https://cloud.google.com/compute/docs/access/service-accounts#default_service_account Users starting the pipeline must have the `iam.serviceAccounts.actAs` permission on this service account.
  late final pulumi.Output<String> serviceAccount;

  /// Pipeline start time.
  late final pulumi.Output<String> startTime;

  /// The detailed state of the job.
  late final pulumi.Output<String> state;

  /// Pipeline template metadata. Will fill up fields if PipelineJob.template_uri is from supported template registry.
  late final pulumi
      .Output<GoogleCloudAiplatformV1PipelineTemplateMetadataResponse>
      templateMetadata;

  /// A template uri from where the PipelineJob.pipeline_spec, if empty, will be downloaded. Currently, only uri from Vertex Template Registry & Gallery is supported. Reference to https://cloud.google.com/vertex-ai/docs/pipelines/create-pipeline-template.
  late final pulumi.Output<String> templateUri;

  /// Timestamp when this PipelineJob was most recently updated.
  late final pulumi.Output<String> updateTime;

  /// Creates a new [PipelineJob].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [PipelineJob]. {@macro pulumi_aiplatform_v1_pipeline_job_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  PipelineJob(
    String name, {
    PipelineJobArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'google-native:aiplatform/v1:PipelineJob',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.createTime = registerOutput<String>('createTime');
    this.displayName = registerOutput<String>('displayName');
    this.encryptionSpec =
        registerOutput<GoogleCloudAiplatformV1EncryptionSpecResponse>(
            'encryptionSpec');
    this.endTime = registerOutput<String>('endTime');
    this.error = registerOutput<GoogleRpcStatusResponse>('error');
    this.jobDetail =
        registerOutput<GoogleCloudAiplatformV1PipelineJobDetailResponse>(
            'jobDetail');
    this.labels = registerOutput<Map<String, String>>('labels');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.network = registerOutput<String>('network');
    this.pipelineJobId = registerOutput<String?>('pipelineJobId');
    this.pipelineSpec = registerOutput<Map<String, String>>('pipelineSpec');
    this.project = registerOutput<String>('project');
    this.reservedIpRanges = registerOutput<List<String>>('reservedIpRanges');
    this.runtimeConfig =
        registerOutput<GoogleCloudAiplatformV1PipelineJobRuntimeConfigResponse>(
            'runtimeConfig');
    this.scheduleName = registerOutput<String>('scheduleName');
    this.serviceAccount = registerOutput<String>('serviceAccount');
    this.startTime = registerOutput<String>('startTime');
    this.state = registerOutput<String>('state');
    this.templateMetadata =
        registerOutput<GoogleCloudAiplatformV1PipelineTemplateMetadataResponse>(
            'templateMetadata');
    this.templateUri = registerOutput<String>('templateUri');
    this.updateTime = registerOutput<String>('updateTime');
  }
}
