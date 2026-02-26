import 'package:pulumi/pulumi.dart';
import 'google_cloud_aiplatform_v1beta1_encryption_spec_response.dart';
import 'google_cloud_aiplatform_v1beta1_pipeline_job_detail_response.dart';
import 'google_cloud_aiplatform_v1beta1_pipeline_job_runtime_config_response.dart';
import 'google_cloud_aiplatform_v1beta1_pipeline_template_metadata_response.dart';
import 'google_rpc_status_response2.dart';
import 'pipeline_job_args2.dart';

/// Creates a PipelineJob. A PipelineJob will run immediately when created.
/// Auto-naming is currently not supported for this resource.
class PipelineJob2 extends CustomResource {
  /// Pipeline creation time.
  late final Output<String> createTime;

  /// The display name of the Pipeline. The name can be up to 128 characters long and can consist of any UTF-8 characters.
  late final Output<String> displayName;

  /// Customer-managed encryption key spec for a pipelineJob. If set, this PipelineJob and all of its sub-resources will be secured by this key.
  late final Output<GoogleCloudAiplatformV1beta1EncryptionSpecResponse>
      encryptionSpec;

  /// Pipeline end time.
  late final Output<String> endTime;

  /// The error that occurred during pipeline execution. Only populated when the pipeline's state is FAILED or CANCELLED.
  late final Output<GoogleRpcStatusResponse2> error;

  /// The details of pipeline run. Not available in the list view.
  late final Output<GoogleCloudAiplatformV1beta1PipelineJobDetailResponse>
      jobDetail;

  /// The labels with user-defined metadata to organize PipelineJob. Label keys and values can be no longer than 64 characters (Unicode codepoints), can only contain lowercase letters, numeric characters, underscores and dashes. International characters are allowed. See https://goo.gl/xmQnxf for more information and examples of labels. Note there is some reserved label key for Vertex AI Pipelines. - `vertex-ai-pipelines-run-billing-id`, user set value will get overrided.
  late final Output<Map<String, String>> labels;
  late final Output<String> location;

  /// The resource name of the PipelineJob.
  late final Output<String> name;

  /// The full name of the Compute Engine [network](/compute/docs/networks-and-firewalls#networks) to which the Pipeline Job's workload should be peered. For example, `projects/12345/global/networks/myVPC`. [Format](/compute/docs/reference/rest/v1/networks/insert) is of the form `projects/{project}/global/networks/{network}`. Where {project} is a project number, as in `12345`, and {network} is a network name. Private services access must already be configured for the network. Pipeline job will apply the network configuration to the Google Cloud resources being launched, if applied, such as Vertex AI Training or Dataflow job. If left unspecified, the workload is not peered with any network.
  late final Output<String> network;

  /// The ID to use for the PipelineJob, which will become the final component of the PipelineJob name. If not provided, an ID will be automatically generated. This value should be less than 128 characters, and valid characters are `/a-z-/`.
  late final Output<String?> pipelineJobId;

  /// The spec of the pipeline.
  late final Output<Map<String, String>> pipelineSpec;
  late final Output<String> project;

  /// A list of names for the reserved ip ranges under the VPC network that can be used for this Pipeline Job's workload. If set, we will deploy the Pipeline Job's workload within the provided ip ranges. Otherwise, the job will be deployed to any ip ranges under the provided VPC network. Example: ['vertex-ai-ip-range'].
  late final Output<List<String>> reservedIpRanges;

  /// Runtime config of the pipeline.
  late final Output<
          GoogleCloudAiplatformV1beta1PipelineJobRuntimeConfigResponse>
      runtimeConfig;

  /// The schedule resource name. Only returned if the Pipeline is created by Schedule API.
  late final Output<String> scheduleName;

  /// The service account that the pipeline workload runs as. If not specified, the Compute Engine default service account in the project will be used. See https://cloud.google.com/compute/docs/access/service-accounts#default_service_account Users starting the pipeline must have the `iam.serviceAccounts.actAs` permission on this service account.
  late final Output<String> serviceAccount;

  /// Pipeline start time.
  late final Output<String> startTime;

  /// The detailed state of the job.
  late final Output<String> state;

  /// Pipeline template metadata. Will fill up fields if PipelineJob.template_uri is from supported template registry.
  late final Output<
          GoogleCloudAiplatformV1beta1PipelineTemplateMetadataResponse>
      templateMetadata;

  /// A template uri from where the PipelineJob.pipeline_spec, if empty, will be downloaded. Currently, only uri from Vertex Template Registry & Gallery is supported. Reference to https://cloud.google.com/vertex-ai/docs/pipelines/create-pipeline-template.
  late final Output<String> templateUri;

  /// Timestamp when this PipelineJob was most recently updated.
  late final Output<String> updateTime;

  PipelineJob2(
    String name, {
    PipelineJobArgs2? args,
    CustomResourceOptions? options,
  }) : super(
          'google-native:aiplatform/v1beta1:PipelineJob',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.createTime = Output.createUnknown<String>();
    this.displayName = Output.createUnknown<String>();
    this.encryptionSpec = Output.createUnknown<
        GoogleCloudAiplatformV1beta1EncryptionSpecResponse>();
    this.endTime = Output.createUnknown<String>();
    this.error = Output.createUnknown<GoogleRpcStatusResponse2>();
    this.jobDetail = Output.createUnknown<
        GoogleCloudAiplatformV1beta1PipelineJobDetailResponse>();
    this.labels = Output.createUnknown<Map<String, String>>();
    this.location = Output.createUnknown<String>();
    this.name = Output.createUnknown<String>();
    this.network = Output.createUnknown<String>();
    this.pipelineJobId = Output.createUnknown<String?>();
    this.pipelineSpec = Output.createUnknown<Map<String, String>>();
    this.project = Output.createUnknown<String>();
    this.reservedIpRanges = Output.createUnknown<List<String>>();
    this.runtimeConfig = Output.createUnknown<
        GoogleCloudAiplatformV1beta1PipelineJobRuntimeConfigResponse>();
    this.scheduleName = Output.createUnknown<String>();
    this.serviceAccount = Output.createUnknown<String>();
    this.startTime = Output.createUnknown<String>();
    this.state = Output.createUnknown<String>();
    this.templateMetadata = Output.createUnknown<
        GoogleCloudAiplatformV1beta1PipelineTemplateMetadataResponse>();
    this.templateUri = Output.createUnknown<String>();
    this.updateTime = Output.createUnknown<String>();
  }
}
