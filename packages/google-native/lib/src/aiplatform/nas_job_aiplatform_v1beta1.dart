import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_aiplatform_v1beta1_encryption_spec_response.dart';
import 'google_cloud_aiplatform_v1beta1_nas_job_output_response.dart';
import 'google_cloud_aiplatform_v1beta1_nas_job_spec_response.dart';
import 'google_rpc_status_response_aiplatform_v1beta1.dart';
import 'nas_job_aiplatform_v1beta1_args.dart';

/// Creates a NasJob
/// Auto-naming is currently not supported for this resource.
class NasJobAiplatformV1beta1 extends pulumi.CustomResource {
  /// Time when the NasJob was created.
  late final pulumi.Output<String> createTime;

  /// The display name of the NasJob. The name can be up to 128 characters long and can consist of any UTF-8 characters.
  late final pulumi.Output<String> displayName;

  /// Optional. Enable a separation of Custom model training and restricted image training for tenant project.
  late final pulumi.Output<bool> enableRestrictedImageTraining;

  /// Customer-managed encryption key options for a NasJob. If this is set, then all resources created by the NasJob will be encrypted with the provided encryption key.
  late final pulumi.Output<GoogleCloudAiplatformV1beta1EncryptionSpecResponse>
  encryptionSpec;

  /// Time when the NasJob entered any of the following states: `JOB_STATE_SUCCEEDED`, `JOB_STATE_FAILED`, `JOB_STATE_CANCELLED`.
  late final pulumi.Output<String> endTime;

  /// Only populated when job's state is JOB_STATE_FAILED or JOB_STATE_CANCELLED.
  late final pulumi.Output<GoogleRpcStatusResponseAiplatformV1beta1> error;

  /// The labels with user-defined metadata to organize NasJobs. Label keys and values can be no longer than 64 characters (Unicode codepoints), can only contain lowercase letters, numeric characters, underscores and dashes. International characters are allowed. See https://goo.gl/xmQnxf for more information and examples of labels.
  late final pulumi.Output<Map<String, String>> labels;
  late final pulumi.Output<String> location;

  /// Resource name of the NasJob.
  late final pulumi.Output<String> name;

  /// Output of the NasJob.
  late final pulumi.Output<GoogleCloudAiplatformV1beta1NasJobOutputResponse>
  nasJobOutput;

  /// The specification of a NasJob.
  late final pulumi.Output<GoogleCloudAiplatformV1beta1NasJobSpecResponse>
  nasJobSpec;
  late final pulumi.Output<String> project;

  /// Time when the NasJob for the first time entered the `JOB_STATE_RUNNING` state.
  late final pulumi.Output<String> startTime;

  /// The detailed state of the job.
  late final pulumi.Output<String> state;

  /// Time when the NasJob was most recently updated.
  late final pulumi.Output<String> updateTime;

  /// Creates a new [NasJobAiplatformV1beta1].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [NasJobAiplatformV1beta1]. {@macro pulumi_aiplatform_v1beta1_nas_job_aiplatform_v1beta1_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  NasJobAiplatformV1beta1(
    String name, {
    NasJobAiplatformV1beta1Args? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'google-native:aiplatform/v1beta1:NasJob',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    this.createTime = registerOutput<String>('createTime');
    this.displayName = registerOutput<String>('displayName');
    this.enableRestrictedImageTraining = registerOutput<bool>(
      'enableRestrictedImageTraining',
    );
    this.encryptionSpec =
        registerOutput<GoogleCloudAiplatformV1beta1EncryptionSpecResponse>(
          'encryptionSpec',
        );
    this.endTime = registerOutput<String>('endTime');
    this.error = registerOutput<GoogleRpcStatusResponseAiplatformV1beta1>(
      'error',
    );
    this.labels = registerOutput<Map<String, String>>('labels');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.nasJobOutput =
        registerOutput<GoogleCloudAiplatformV1beta1NasJobOutputResponse>(
          'nasJobOutput',
        );
    this.nasJobSpec =
        registerOutput<GoogleCloudAiplatformV1beta1NasJobSpecResponse>(
          'nasJobSpec',
        );
    this.project = registerOutput<String>('project');
    this.startTime = registerOutput<String>('startTime');
    this.state = registerOutput<String>('state');
    this.updateTime = registerOutput<String>('updateTime');
  }
}
