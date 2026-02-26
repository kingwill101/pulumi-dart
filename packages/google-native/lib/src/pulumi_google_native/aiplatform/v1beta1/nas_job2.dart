import 'package:pulumi/pulumi.dart';
import 'google_cloud_aiplatform_v1beta1_encryption_spec_response.dart';
import 'google_cloud_aiplatform_v1beta1_nas_job_output_response.dart';
import 'google_cloud_aiplatform_v1beta1_nas_job_spec_response.dart';
import 'google_rpc_status_response2.dart';
import 'nas_job_args2.dart';

/// Creates a NasJob
/// Auto-naming is currently not supported for this resource.
class NasJob2 extends CustomResource {
  /// Time when the NasJob was created.
  late final Output<String> createTime;

  /// The display name of the NasJob. The name can be up to 128 characters long and can consist of any UTF-8 characters.
  late final Output<String> displayName;

  /// Optional. Enable a separation of Custom model training and restricted image training for tenant project.
  late final Output<bool> enableRestrictedImageTraining;

  /// Customer-managed encryption key options for a NasJob. If this is set, then all resources created by the NasJob will be encrypted with the provided encryption key.
  late final Output<GoogleCloudAiplatformV1beta1EncryptionSpecResponse>
      encryptionSpec;

  /// Time when the NasJob entered any of the following states: `JOB_STATE_SUCCEEDED`, `JOB_STATE_FAILED`, `JOB_STATE_CANCELLED`.
  late final Output<String> endTime;

  /// Only populated when job's state is JOB_STATE_FAILED or JOB_STATE_CANCELLED.
  late final Output<GoogleRpcStatusResponse2> error;

  /// The labels with user-defined metadata to organize NasJobs. Label keys and values can be no longer than 64 characters (Unicode codepoints), can only contain lowercase letters, numeric characters, underscores and dashes. International characters are allowed. See https://goo.gl/xmQnxf for more information and examples of labels.
  late final Output<Map<String, String>> labels;
  late final Output<String> location;

  /// Resource name of the NasJob.
  late final Output<String> name;

  /// Output of the NasJob.
  late final Output<GoogleCloudAiplatformV1beta1NasJobOutputResponse>
      nasJobOutput;

  /// The specification of a NasJob.
  late final Output<GoogleCloudAiplatformV1beta1NasJobSpecResponse> nasJobSpec;
  late final Output<String> project;

  /// Time when the NasJob for the first time entered the `JOB_STATE_RUNNING` state.
  late final Output<String> startTime;

  /// The detailed state of the job.
  late final Output<String> state;

  /// Time when the NasJob was most recently updated.
  late final Output<String> updateTime;

  NasJob2(
    String name, {
    NasJobArgs2? args,
    CustomResourceOptions? options,
  }) : super(
          'google-native:aiplatform/v1beta1:NasJob',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.createTime = Output.createUnknown<String>();
    this.displayName = Output.createUnknown<String>();
    this.enableRestrictedImageTraining = Output.createUnknown<bool>();
    this.encryptionSpec = Output.createUnknown<
        GoogleCloudAiplatformV1beta1EncryptionSpecResponse>();
    this.endTime = Output.createUnknown<String>();
    this.error = Output.createUnknown<GoogleRpcStatusResponse2>();
    this.labels = Output.createUnknown<Map<String, String>>();
    this.location = Output.createUnknown<String>();
    this.name = Output.createUnknown<String>();
    this.nasJobOutput = Output.createUnknown<
        GoogleCloudAiplatformV1beta1NasJobOutputResponse>();
    this.nasJobSpec =
        Output.createUnknown<GoogleCloudAiplatformV1beta1NasJobSpecResponse>();
    this.project = Output.createUnknown<String>();
    this.startTime = Output.createUnknown<String>();
    this.state = Output.createUnknown<String>();
    this.updateTime = Output.createUnknown<String>();
  }
}
