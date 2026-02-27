import 'package:pulumi/pulumi.dart' hide Config;
import 'google_cloud_aiplatform_v1beta1_custom_job_spec_response.dart';
import 'google_cloud_aiplatform_v1beta1_encryption_spec_response.dart';
import 'google_cloud_aiplatform_v1beta1_study_spec_response.dart';
import 'google_cloud_aiplatform_v1beta1_trial_response.dart';
import 'google_rpc_status_response2.dart';
import 'hyperparameter_tuning_job_args2.dart';

/// Creates a HyperparameterTuningJob
/// Auto-naming is currently not supported for this resource.
class HyperparameterTuningJob2 extends CustomResource {
  /// Time when the HyperparameterTuningJob was created.
  late final Output<String> createTime;

  /// The display name of the HyperparameterTuningJob. The name can be up to 128 characters long and can consist of any UTF-8 characters.
  late final Output<String> displayName;

  /// Customer-managed encryption key options for a HyperparameterTuningJob. If this is set, then all resources created by the HyperparameterTuningJob will be encrypted with the provided encryption key.
  late final Output<GoogleCloudAiplatformV1beta1EncryptionSpecResponse>
      encryptionSpec;

  /// Time when the HyperparameterTuningJob entered any of the following states: `JOB_STATE_SUCCEEDED`, `JOB_STATE_FAILED`, `JOB_STATE_CANCELLED`.
  late final Output<String> endTime;

  /// Only populated when job's state is JOB_STATE_FAILED or JOB_STATE_CANCELLED.
  late final Output<GoogleRpcStatusResponse2> error;

  /// The labels with user-defined metadata to organize HyperparameterTuningJobs. Label keys and values can be no longer than 64 characters (Unicode codepoints), can only contain lowercase letters, numeric characters, underscores and dashes. International characters are allowed. See https://goo.gl/xmQnxf for more information and examples of labels.
  late final Output<Map<String, String>> labels;
  late final Output<String> location;

  /// The number of failed Trials that need to be seen before failing the HyperparameterTuningJob. If set to 0, Vertex AI decides how many Trials must fail before the whole job fails.
  late final Output<int> maxFailedTrialCount;

  /// The desired total number of Trials.
  late final Output<int> maxTrialCount;

  /// Resource name of the HyperparameterTuningJob.
  late final Output<String> name;

  /// The desired number of Trials to run in parallel.
  late final Output<int> parallelTrialCount;
  late final Output<String> project;

  /// Time when the HyperparameterTuningJob for the first time entered the `JOB_STATE_RUNNING` state.
  late final Output<String> startTime;

  /// The detailed state of the job.
  late final Output<String> state;

  /// Study configuration of the HyperparameterTuningJob.
  late final Output<GoogleCloudAiplatformV1beta1StudySpecResponse> studySpec;

  /// The spec of a trial job. The same spec applies to the CustomJobs created in all the trials.
  late final Output<GoogleCloudAiplatformV1beta1CustomJobSpecResponse>
      trialJobSpec;

  /// Trials of the HyperparameterTuningJob.
  late final Output<List<GoogleCloudAiplatformV1beta1TrialResponse>> trials;

  /// Time when the HyperparameterTuningJob was most recently updated.
  late final Output<String> updateTime;

  HyperparameterTuningJob2(
    String name, {
    HyperparameterTuningJobArgs2? args,
    CustomResourceOptions? options,
  }) : super(
          'google-native:aiplatform/v1beta1:HyperparameterTuningJob',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.createTime = registerOutput<String>('createTime');
    this.displayName = registerOutput<String>('displayName');
    this.encryptionSpec =
        registerOutput<GoogleCloudAiplatformV1beta1EncryptionSpecResponse>(
            'encryptionSpec');
    this.endTime = registerOutput<String>('endTime');
    this.error = registerOutput<GoogleRpcStatusResponse2>('error');
    this.labels = registerOutput<Map<String, String>>('labels');
    this.location = registerOutput<String>('location');
    this.maxFailedTrialCount = registerOutput<int>('maxFailedTrialCount');
    this.maxTrialCount = registerOutput<int>('maxTrialCount');
    this.name = registerOutput<String>('name');
    this.parallelTrialCount = registerOutput<int>('parallelTrialCount');
    this.project = registerOutput<String>('project');
    this.startTime = registerOutput<String>('startTime');
    this.state = registerOutput<String>('state');
    this.studySpec =
        registerOutput<GoogleCloudAiplatformV1beta1StudySpecResponse>(
            'studySpec');
    this.trialJobSpec =
        registerOutput<GoogleCloudAiplatformV1beta1CustomJobSpecResponse>(
            'trialJobSpec');
    this.trials =
        registerOutput<List<GoogleCloudAiplatformV1beta1TrialResponse>>(
            'trials');
    this.updateTime = registerOutput<String>('updateTime');
  }
}
