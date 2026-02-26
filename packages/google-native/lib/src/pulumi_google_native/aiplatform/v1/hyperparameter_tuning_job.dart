import 'package:pulumi/pulumi.dart';
import 'google_cloud_aiplatform_v1_custom_job_spec_response.dart';
import 'google_cloud_aiplatform_v1_encryption_spec_response.dart';
import 'google_cloud_aiplatform_v1_study_spec_response.dart';
import 'google_cloud_aiplatform_v1_trial_response.dart';
import 'google_rpc_status_response.dart';
import 'hyperparameter_tuning_job_args.dart';

/// Creates a HyperparameterTuningJob
/// Auto-naming is currently not supported for this resource.
class HyperparameterTuningJob extends CustomResource {
  /// Time when the HyperparameterTuningJob was created.
  late final Output<String> createTime;

  /// The display name of the HyperparameterTuningJob. The name can be up to 128 characters long and can consist of any UTF-8 characters.
  late final Output<String> displayName;

  /// Customer-managed encryption key options for a HyperparameterTuningJob. If this is set, then all resources created by the HyperparameterTuningJob will be encrypted with the provided encryption key.
  late final Output<GoogleCloudAiplatformV1EncryptionSpecResponse>
      encryptionSpec;

  /// Time when the HyperparameterTuningJob entered any of the following states: `JOB_STATE_SUCCEEDED`, `JOB_STATE_FAILED`, `JOB_STATE_CANCELLED`.
  late final Output<String> endTime;

  /// Only populated when job's state is JOB_STATE_FAILED or JOB_STATE_CANCELLED.
  late final Output<GoogleRpcStatusResponse> error;

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
  late final Output<GoogleCloudAiplatformV1StudySpecResponse> studySpec;

  /// The spec of a trial job. The same spec applies to the CustomJobs created in all the trials.
  late final Output<GoogleCloudAiplatformV1CustomJobSpecResponse> trialJobSpec;

  /// Trials of the HyperparameterTuningJob.
  late final Output<List<GoogleCloudAiplatformV1TrialResponse>> trials;

  /// Time when the HyperparameterTuningJob was most recently updated.
  late final Output<String> updateTime;

  HyperparameterTuningJob(
    String name, {
    HyperparameterTuningJobArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'google-native:aiplatform/v1:HyperparameterTuningJob',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.createTime = Output.createUnknown<String>();
    this.displayName = Output.createUnknown<String>();
    this.encryptionSpec =
        Output.createUnknown<GoogleCloudAiplatformV1EncryptionSpecResponse>();
    this.endTime = Output.createUnknown<String>();
    this.error = Output.createUnknown<GoogleRpcStatusResponse>();
    this.labels = Output.createUnknown<Map<String, String>>();
    this.location = Output.createUnknown<String>();
    this.maxFailedTrialCount = Output.createUnknown<int>();
    this.maxTrialCount = Output.createUnknown<int>();
    this.name = Output.createUnknown<String>();
    this.parallelTrialCount = Output.createUnknown<int>();
    this.project = Output.createUnknown<String>();
    this.startTime = Output.createUnknown<String>();
    this.state = Output.createUnknown<String>();
    this.studySpec =
        Output.createUnknown<GoogleCloudAiplatformV1StudySpecResponse>();
    this.trialJobSpec =
        Output.createUnknown<GoogleCloudAiplatformV1CustomJobSpecResponse>();
    this.trials =
        Output.createUnknown<List<GoogleCloudAiplatformV1TrialResponse>>();
    this.updateTime = Output.createUnknown<String>();
  }
}
