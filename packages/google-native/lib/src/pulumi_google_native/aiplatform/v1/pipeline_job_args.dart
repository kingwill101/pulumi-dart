// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import 'google_cloud_aiplatform_v1_encryption_spec.dart';
import 'google_cloud_aiplatform_v1_pipeline_job_runtime_config.dart';

/// The set of arguments for PipelineJob.
class PipelineJobArgs {
  /// The display name of the Pipeline. The name can be up to 128 characters long and can consist of any UTF-8 characters.
  final Input<String>? displayName;

  /// Customer-managed encryption key spec for a pipelineJob. If set, this PipelineJob and all of its sub-resources will be secured by this key.
  final Input<GoogleCloudAiplatformV1EncryptionSpec>? encryptionSpec;

  /// The labels with user-defined metadata to organize PipelineJob. Label keys and values can be no longer than 64 characters (Unicode codepoints), can only contain lowercase letters, numeric characters, underscores and dashes. International characters are allowed. See https://goo.gl/xmQnxf for more information and examples of labels. Note there is some reserved label key for Vertex AI Pipelines. - `vertex-ai-pipelines-run-billing-id`, user set value will get overrided.
  final Input<Map<String, String>>? labels;
  final Input<String>? location;

  /// The full name of the Compute Engine [network](/compute/docs/networks-and-firewalls#networks) to which the Pipeline Job's workload should be peered. For example, `projects/12345/global/networks/myVPC`. [Format](/compute/docs/reference/rest/v1/networks/insert) is of the form `projects/{project}/global/networks/{network}`. Where {project} is a project number, as in `12345`, and {network} is a network name. Private services access must already be configured for the network. Pipeline job will apply the network configuration to the Google Cloud resources being launched, if applied, such as Vertex AI Training or Dataflow job. If left unspecified, the workload is not peered with any network.
  final Input<String>? network;

  /// The ID to use for the PipelineJob, which will become the final component of the PipelineJob name. If not provided, an ID will be automatically generated. This value should be less than 128 characters, and valid characters are `/a-z-/`.
  final Input<String>? pipelineJobId;

  /// The spec of the pipeline.
  final Input<Map<String, String>>? pipelineSpec;
  final Input<String>? project;

  /// A list of names for the reserved ip ranges under the VPC network that can be used for this Pipeline Job's workload. If set, we will deploy the Pipeline Job's workload within the provided ip ranges. Otherwise, the job will be deployed to any ip ranges under the provided VPC network. Example: ['vertex-ai-ip-range'].
  final Input<List<String>>? reservedIpRanges;

  /// Runtime config of the pipeline.
  final Input<GoogleCloudAiplatformV1PipelineJobRuntimeConfig>? runtimeConfig;

  /// The service account that the pipeline workload runs as. If not specified, the Compute Engine default service account in the project will be used. See https://cloud.google.com/compute/docs/access/service-accounts#default_service_account Users starting the pipeline must have the `iam.serviceAccounts.actAs` permission on this service account.
  final Input<String>? serviceAccount;

  /// A template uri from where the PipelineJob.pipeline_spec, if empty, will be downloaded. Currently, only uri from Vertex Template Registry & Gallery is supported. Reference to https://cloud.google.com/vertex-ai/docs/pipelines/create-pipeline-template.
  final Input<String>? templateUri;

  PipelineJobArgs({
    this.displayName,
    this.encryptionSpec,
    this.labels,
    this.location,
    this.network,
    this.pipelineJobId,
    this.pipelineSpec,
    this.project,
    this.reservedIpRanges,
    this.runtimeConfig,
    this.serviceAccount,
    this.templateUri,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final displayNameValue = displayName;
    if (displayNameValue != null) {
      map['displayName'] = displayNameValue;
    }
    final encryptionSpecValue = encryptionSpec;
    if (encryptionSpecValue != null) {
      map['encryptionSpec'] = Input.mapOptionalInputValue<
          GoogleCloudAiplatformV1EncryptionSpec,
          Map<String, dynamic>>(encryptionSpecValue, (value) => value.toMap());
    }
    final labelsValue = labels;
    if (labelsValue != null) {
      map['labels'] = labelsValue;
    }
    final locationValue = location;
    if (locationValue != null) {
      map['location'] = locationValue;
    }
    final networkValue = network;
    if (networkValue != null) {
      map['network'] = networkValue;
    }
    final pipelineJobIdValue = pipelineJobId;
    if (pipelineJobIdValue != null) {
      map['pipelineJobId'] = pipelineJobIdValue;
    }
    final pipelineSpecValue = pipelineSpec;
    if (pipelineSpecValue != null) {
      map['pipelineSpec'] = pipelineSpecValue;
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    final reservedIpRangesValue = reservedIpRanges;
    if (reservedIpRangesValue != null) {
      map['reservedIpRanges'] = reservedIpRangesValue;
    }
    final runtimeConfigValue = runtimeConfig;
    if (runtimeConfigValue != null) {
      map['runtimeConfig'] = Input.mapOptionalInputValue<
          GoogleCloudAiplatformV1PipelineJobRuntimeConfig,
          Map<String, dynamic>>(runtimeConfigValue, (value) => value.toMap());
    }
    final serviceAccountValue = serviceAccount;
    if (serviceAccountValue != null) {
      map['serviceAccount'] = serviceAccountValue;
    }
    final templateUriValue = templateUri;
    if (templateUriValue != null) {
      map['templateUri'] = templateUriValue;
    }
    return map;
  }

  factory PipelineJobArgs.fromMap(Map<String, dynamic> map) {
    return PipelineJobArgs(
      displayName: Input.asOptionalInput<String>(map['displayName']),
      encryptionSpec:
          Input.asOptionalInput<GoogleCloudAiplatformV1EncryptionSpec>(
              map['encryptionSpec']),
      labels: Input.asOptionalInput<Map<String, String>>(map['labels']),
      location: Input.asOptionalInput<String>(map['location']),
      network: Input.asOptionalInput<String>(map['network']),
      pipelineJobId: Input.asOptionalInput<String>(map['pipelineJobId']),
      pipelineSpec:
          Input.asOptionalInput<Map<String, String>>(map['pipelineSpec']),
      project: Input.asOptionalInput<String>(map['project']),
      reservedIpRanges:
          Input.asOptionalInput<List<String>>(map['reservedIpRanges']),
      runtimeConfig: Input.asOptionalInput<
              GoogleCloudAiplatformV1PipelineJobRuntimeConfig>(
          map['runtimeConfig']),
      serviceAccount: Input.asOptionalInput<String>(map['serviceAccount']),
      templateUri: Input.asOptionalInput<String>(map['templateUri']),
    );
  }
}
