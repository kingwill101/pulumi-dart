// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_aiplatform_v1beta1_encryption_spec.dart';
import 'google_cloud_aiplatform_v1beta1_pipeline_job_runtime_config.dart';

/// {@template pulumi_aiplatform_v1beta1_pipeline_job_aiplatform_v1beta1_args_doc}
/// The set of arguments for PipelineJob.
/// {@endtemplate}
/// {@macro pulumi_aiplatform_v1beta1_pipeline_job_aiplatform_v1beta1_args_doc}
class PipelineJobAiplatformV1beta1Args {
  /// The display name of the Pipeline. The name can be up to 128 characters long and can consist of any UTF-8 characters.
  final pulumi.Input<String>? displayName;

  /// Customer-managed encryption key spec for a pipelineJob. If set, this PipelineJob and all of its sub-resources will be secured by this key.
  final pulumi.Input<GoogleCloudAiplatformV1beta1EncryptionSpec>?
      encryptionSpec;

  /// The labels with user-defined metadata to organize PipelineJob. Label keys and values can be no longer than 64 characters (Unicode codepoints), can only contain lowercase letters, numeric characters, underscores and dashes. International characters are allowed. See https://goo.gl/xmQnxf for more information and examples of labels. Note there is some reserved label key for Vertex AI Pipelines. - `vertex-ai-pipelines-run-billing-id`, user set value will get overrided.
  final pulumi.Input<Map<String, String>>? labels;
  final pulumi.Input<String>? location;

  /// The full name of the Compute Engine [network](/compute/docs/networks-and-firewalls#networks) to which the Pipeline Job's workload should be peered. For example, `projects/12345/global/networks/myVPC`. [Format](/compute/docs/reference/rest/v1/networks/insert) is of the form `projects/{project}/global/networks/{network}`. Where {project} is a project number, as in `12345`, and {network} is a network name. Private services access must already be configured for the network. Pipeline job will apply the network configuration to the Google Cloud resources being launched, if applied, such as Vertex AI Training or Dataflow job. If left unspecified, the workload is not peered with any network.
  final pulumi.Input<String>? network;

  /// The ID to use for the PipelineJob, which will become the final component of the PipelineJob name. If not provided, an ID will be automatically generated. This value should be less than 128 characters, and valid characters are `/a-z-/`.
  final pulumi.Input<String>? pipelineJobId;

  /// The spec of the pipeline.
  final pulumi.Input<Map<String, String>>? pipelineSpec;
  final pulumi.Input<String>? project;

  /// A list of names for the reserved ip ranges under the VPC network that can be used for this Pipeline Job's workload. If set, we will deploy the Pipeline Job's workload within the provided ip ranges. Otherwise, the job will be deployed to any ip ranges under the provided VPC network. Example: ['vertex-ai-ip-range'].
  final pulumi.Input<List<String>>? reservedIpRanges;

  /// Runtime config of the pipeline.
  final pulumi.Input<GoogleCloudAiplatformV1beta1PipelineJobRuntimeConfig>?
      runtimeConfig;

  /// The service account that the pipeline workload runs as. If not specified, the Compute Engine default service account in the project will be used. See https://cloud.google.com/compute/docs/access/service-accounts#default_service_account Users starting the pipeline must have the `iam.serviceAccounts.actAs` permission on this service account.
  final pulumi.Input<String>? serviceAccount;

  /// A template uri from where the PipelineJob.pipeline_spec, if empty, will be downloaded. Currently, only uri from Vertex Template Registry & Gallery is supported. Reference to https://cloud.google.com/vertex-ai/docs/pipelines/create-pipeline-template.
  final pulumi.Input<String>? templateUri;

  /// Creates a new [PipelineJobAiplatformV1beta1Args].
  /// [displayName] The display name of the Pipeline. The name can be up to 128 characters long and can consist of any UTF-8 characters.
  /// [encryptionSpec] Customer-managed encryption key spec for a pipelineJob. If set, this PipelineJob and all of its sub-resources will be secured by this key.
  /// [labels] The labels with user-defined metadata to organize PipelineJob. Label keys and values can be no longer than 64 characters (Unicode codepoints), can only contain lowercase letters, numeric characters, underscores and dashes. International characters are allowed. See https://goo.gl/xmQnxf for more information and examples of labels. Note there is some reserved label key for Vertex AI Pipelines. - `vertex-ai-pipelines-run-billing-id`, user set value will get overrided.
  /// [location] Optional.
  /// [network] The full name of the Compute Engine [network](/compute/docs/networks-and-firewalls#networks) to which the Pipeline Job's workload should be peered. For example, `projects/12345/global/networks/myVPC`. [Format](/compute/docs/reference/rest/v1/networks/insert) is of the form `projects/{project}/global/networks/{network}`. Where {project} is a project number, as in `12345`, and {network} is a network name. Private services access must already be configured for the network. Pipeline job will apply the network configuration to the Google Cloud resources being launched, if applied, such as Vertex AI Training or Dataflow job. If left unspecified, the workload is not peered with any network.
  /// [pipelineJobId] The ID to use for the PipelineJob, which will become the final component of the PipelineJob name. If not provided, an ID will be automatically generated. This value should be less than 128 characters, and valid characters are `/a-z-/`.
  /// [pipelineSpec] The spec of the pipeline.
  /// [project] Optional.
  /// [reservedIpRanges] A list of names for the reserved ip ranges under the VPC network that can be used for this Pipeline Job's workload. If set, we will deploy the Pipeline Job's workload within the provided ip ranges. Otherwise, the job will be deployed to any ip ranges under the provided VPC network. Example: ['vertex-ai-ip-range'].
  /// [runtimeConfig] Runtime config of the pipeline.
  /// [serviceAccount] The service account that the pipeline workload runs as. If not specified, the Compute Engine default service account in the project will be used. See https://cloud.google.com/compute/docs/access/service-accounts#default_service_account Users starting the pipeline must have the `iam.serviceAccounts.actAs` permission on this service account.
  /// [templateUri] A template uri from where the PipelineJob.pipeline_spec, if empty, will be downloaded. Currently, only uri from Vertex Template Registry & Gallery is supported. Reference to https://cloud.google.com/vertex-ai/docs/pipelines/create-pipeline-template.
  PipelineJobAiplatformV1beta1Args({
    String? displayName,
    GoogleCloudAiplatformV1beta1EncryptionSpec? encryptionSpec,
    Map<String, String>? labels,
    String? location,
    String? network,
    String? pipelineJobId,
    Map<String, String>? pipelineSpec,
    String? project,
    List<String>? reservedIpRanges,
    GoogleCloudAiplatformV1beta1PipelineJobRuntimeConfig? runtimeConfig,
    String? serviceAccount,
    String? templateUri,
  })  : displayName = pulumi.Input.asOptionalInput<String>(displayName),
        encryptionSpec = pulumi.Input.asOptionalInput<
            GoogleCloudAiplatformV1beta1EncryptionSpec>(encryptionSpec),
        labels = pulumi.Input.asOptionalInput<Map<String, String>>(labels),
        location = pulumi.Input.asOptionalInput<String>(location),
        network = pulumi.Input.asOptionalInput<String>(network),
        pipelineJobId = pulumi.Input.asOptionalInput<String>(pipelineJobId),
        pipelineSpec =
            pulumi.Input.asOptionalInput<Map<String, String>>(pipelineSpec),
        project = pulumi.Input.asOptionalInput<String>(project),
        reservedIpRanges =
            pulumi.Input.asOptionalInput<List<String>>(reservedIpRanges),
        runtimeConfig = pulumi.Input.asOptionalInput<
                GoogleCloudAiplatformV1beta1PipelineJobRuntimeConfig>(
            runtimeConfig),
        serviceAccount = pulumi.Input.asOptionalInput<String>(serviceAccount),
        templateUri = pulumi.Input.asOptionalInput<String>(templateUri);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final displayNameValue = displayName;
    if (displayNameValue != null) {
      map['displayName'] = displayNameValue;
    }
    final encryptionSpecValue = encryptionSpec;
    if (encryptionSpecValue != null) {
      map['encryptionSpec'] = pulumi.Input.mapOptionalInputValue<
          GoogleCloudAiplatformV1beta1EncryptionSpec,
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
      map['runtimeConfig'] = pulumi.Input.mapOptionalInputValue<
          GoogleCloudAiplatformV1beta1PipelineJobRuntimeConfig,
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

  factory PipelineJobAiplatformV1beta1Args.fromMap(Map<String, dynamic> map) {
    return PipelineJobAiplatformV1beta1Args(
      displayName:
          map['displayName'] == null ? null : map['displayName'] as String,
      encryptionSpec: map['encryptionSpec'] == null
          ? null
          : GoogleCloudAiplatformV1beta1EncryptionSpec.fromMap(
              (map['encryptionSpec'] as Map).cast<String, dynamic>()),
      labels: map['labels'] == null
          ? null
          : (map['labels'] as Map).cast<String, String>(),
      location: map['location'] == null ? null : map['location'] as String,
      network: map['network'] == null ? null : map['network'] as String,
      pipelineJobId:
          map['pipelineJobId'] == null ? null : map['pipelineJobId'] as String,
      pipelineSpec: map['pipelineSpec'] == null
          ? null
          : (map['pipelineSpec'] as Map).cast<String, String>(),
      project: map['project'] == null ? null : map['project'] as String,
      reservedIpRanges: map['reservedIpRanges'] == null
          ? null
          : (map['reservedIpRanges'] as List).cast<String>(),
      runtimeConfig: map['runtimeConfig'] == null
          ? null
          : GoogleCloudAiplatformV1beta1PipelineJobRuntimeConfig.fromMap(
              (map['runtimeConfig'] as Map).cast<String, dynamic>()),
      serviceAccount: map['serviceAccount'] == null
          ? null
          : map['serviceAccount'] as String,
      templateUri:
          map['templateUri'] == null ? null : map['templateUri'] as String,
    );
  }
}
