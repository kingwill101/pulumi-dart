import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_aiplatform_v1_custom_job_spec_response.dart';
import 'google_cloud_aiplatform_v1_encryption_spec_response.dart';
import 'google_cloud_aiplatform_v1_study_spec_response.dart';
import 'google_cloud_aiplatform_v1_trial_response.dart';
import 'google_rpc_status_response.dart';
import 'hyperparameter_tuning_job_args.dart';

/// Creates a HyperparameterTuningJob
/// Auto-naming is currently not supported for this resource.
class HyperparameterTuningJob extends pulumi.CustomResource {
  /// Time when the HyperparameterTuningJob was created.
  late final pulumi.Output<String> createTime;

  /// The display name of the HyperparameterTuningJob. The name can be up to 128 characters long and can consist of any UTF-8 characters.
  late final pulumi.Output<String> displayName;

  /// Customer-managed encryption key options for a HyperparameterTuningJob. If this is set, then all resources created by the HyperparameterTuningJob will be encrypted with the provided encryption key.
  late final pulumi.Output<GoogleCloudAiplatformV1EncryptionSpecResponse>
  encryptionSpec;

  /// Time when the HyperparameterTuningJob entered any of the following states: `JOB_STATE_SUCCEEDED`, `JOB_STATE_FAILED`, `JOB_STATE_CANCELLED`.
  late final pulumi.Output<String> endTime;

  /// Only populated when job's state is JOB_STATE_FAILED or JOB_STATE_CANCELLED.
  late final pulumi.Output<GoogleRpcStatusResponse> error;

  /// The labels with user-defined metadata to organize HyperparameterTuningJobs. Label keys and values can be no longer than 64 characters (Unicode codepoints), can only contain lowercase letters, numeric characters, underscores and dashes. International characters are allowed. See https://goo.gl/xmQnxf for more information and examples of labels.
  late final pulumi.Output<Map<String, String>> labels;
  late final pulumi.Output<String> location;

  /// The number of failed Trials that need to be seen before failing the HyperparameterTuningJob. If set to 0, Vertex AI decides how many Trials must fail before the whole job fails.
  late final pulumi.Output<int> maxFailedTrialCount;

  /// The desired total number of Trials.
  late final pulumi.Output<int> maxTrialCount;

  /// Resource name of the HyperparameterTuningJob.
  late final pulumi.Output<String> name;

  /// The desired number of Trials to run in parallel.
  late final pulumi.Output<int> parallelTrialCount;
  late final pulumi.Output<String> project;

  /// Time when the HyperparameterTuningJob for the first time entered the `JOB_STATE_RUNNING` state.
  late final pulumi.Output<String> startTime;

  /// The detailed state of the job.
  late final pulumi.Output<String> state;

  /// Study configuration of the HyperparameterTuningJob.
  late final pulumi.Output<GoogleCloudAiplatformV1StudySpecResponse> studySpec;

  /// The spec of a trial job. The same spec applies to the CustomJobs created in all the trials.
  late final pulumi.Output<GoogleCloudAiplatformV1CustomJobSpecResponse>
  trialJobSpec;

  /// Trials of the HyperparameterTuningJob.
  late final pulumi.Output<List<GoogleCloudAiplatformV1TrialResponse>> trials;

  /// Time when the HyperparameterTuningJob was most recently updated.
  late final pulumi.Output<String> updateTime;

  /// Creates a new [HyperparameterTuningJob].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [HyperparameterTuningJob]. {@macro pulumi_aiplatform_v1_hyperparameter_tuning_job_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  HyperparameterTuningJob(
    String name, {
    HyperparameterTuningJobArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'google-native:aiplatform/v1:HyperparameterTuningJob',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    this.createTime = registerOutput<String>('createTime');
    this.displayName = registerOutput<String>('displayName');
    this.encryptionSpec =
        registerOutput<GoogleCloudAiplatformV1EncryptionSpecResponse>(
          'encryptionSpec',
        );
    this.endTime = registerOutput<String>('endTime');
    this.error = registerOutput<GoogleRpcStatusResponse>('error');
    this.labels = registerOutput<Map<String, String>>('labels');
    this.location = registerOutput<String>('location');
    this.maxFailedTrialCount = registerOutput<int>('maxFailedTrialCount');
    this.maxTrialCount = registerOutput<int>('maxTrialCount');
    this.name = registerOutput<String>('name');
    this.parallelTrialCount = registerOutput<int>('parallelTrialCount');
    this.project = registerOutput<String>('project');
    this.startTime = registerOutput<String>('startTime');
    this.state = registerOutput<String>('state');
    this.studySpec = registerOutput<GoogleCloudAiplatformV1StudySpecResponse>(
      'studySpec',
    );
    this.trialJobSpec =
        registerOutput<GoogleCloudAiplatformV1CustomJobSpecResponse>(
          'trialJobSpec',
        );
    this.trials = registerOutput<List<GoogleCloudAiplatformV1TrialResponse>>(
      'trials',
    );
    this.updateTime = registerOutput<String>('updateTime');
  }
}
