// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import 'google_cloud_aiplatform_v1_custom_job_spec_response.dart';
import 'google_cloud_aiplatform_v1_encryption_spec_response.dart';
import 'google_cloud_aiplatform_v1_study_spec_response.dart';
import 'google_cloud_aiplatform_v1_trial_response.dart';
import 'google_rpc_status_response.dart';

/// Result data returned by getHyperparameterTuningJob.
class GetHyperparameterTuningJobResult {
  /// Time when the HyperparameterTuningJob was created.
  final String createTime;

  /// The display name of the HyperparameterTuningJob. The name can be up to 128 characters long and can consist of any UTF-8 characters.
  final String displayName;

  /// Customer-managed encryption key options for a HyperparameterTuningJob. If this is set, then all resources created by the HyperparameterTuningJob will be encrypted with the provided encryption key.
  final GoogleCloudAiplatformV1EncryptionSpecResponse encryptionSpec;

  /// Time when the HyperparameterTuningJob entered any of the following states: `JOB_STATE_SUCCEEDED`, `JOB_STATE_FAILED`, `JOB_STATE_CANCELLED`.
  final String endTime;

  /// Only populated when job's state is JOB_STATE_FAILED or JOB_STATE_CANCELLED.
  final GoogleRpcStatusResponse error;

  /// The labels with user-defined metadata to organize HyperparameterTuningJobs. Label keys and values can be no longer than 64 characters (Unicode codepoints), can only contain lowercase letters, numeric characters, underscores and dashes. International characters are allowed. See https://goo.gl/xmQnxf for more information and examples of labels.
  final Map<String, String> labels;

  /// The number of failed Trials that need to be seen before failing the HyperparameterTuningJob. If set to 0, Vertex AI decides how many Trials must fail before the whole job fails.
  final int maxFailedTrialCount;

  /// The desired total number of Trials.
  final int maxTrialCount;

  /// Resource name of the HyperparameterTuningJob.
  final String name;

  /// The desired number of Trials to run in parallel.
  final int parallelTrialCount;

  /// Time when the HyperparameterTuningJob for the first time entered the `JOB_STATE_RUNNING` state.
  final String startTime;

  /// The detailed state of the job.
  final String state;

  /// Study configuration of the HyperparameterTuningJob.
  final GoogleCloudAiplatformV1StudySpecResponse studySpec;

  /// The spec of a trial job. The same spec applies to the CustomJobs created in all the trials.
  final GoogleCloudAiplatformV1CustomJobSpecResponse trialJobSpec;

  /// Trials of the HyperparameterTuningJob.
  final List<GoogleCloudAiplatformV1TrialResponse> trials;

  /// Time when the HyperparameterTuningJob was most recently updated.
  final String updateTime;

  GetHyperparameterTuningJobResult({
    required this.createTime,
    required this.displayName,
    required this.encryptionSpec,
    required this.endTime,
    required this.error,
    required this.labels,
    required this.maxFailedTrialCount,
    required this.maxTrialCount,
    required this.name,
    required this.parallelTrialCount,
    required this.startTime,
    required this.state,
    required this.studySpec,
    required this.trialJobSpec,
    required this.trials,
    required this.updateTime,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['createTime'] = createTime;
    map['displayName'] = displayName;
    map['encryptionSpec'] = encryptionSpec.toMap();
    map['endTime'] = endTime;
    map['error'] = error.toMap();
    map['labels'] = labels;
    map['maxFailedTrialCount'] = maxFailedTrialCount;
    map['maxTrialCount'] = maxTrialCount;
    map['name'] = name;
    map['parallelTrialCount'] = parallelTrialCount;
    map['startTime'] = startTime;
    map['state'] = state;
    map['studySpec'] = studySpec.toMap();
    map['trialJobSpec'] = trialJobSpec.toMap();
    map['trials'] = Input.encodeList<GoogleCloudAiplatformV1TrialResponse,
        Map<String, dynamic>>(trials, (value) => value.toMap());
    map['updateTime'] = updateTime;
    return map;
  }

  factory GetHyperparameterTuningJobResult.fromMap(Map<String, dynamic> map) {
    return GetHyperparameterTuningJobResult(
      createTime: map['createTime'] as String,
      displayName: map['displayName'] as String,
      encryptionSpec: GoogleCloudAiplatformV1EncryptionSpecResponse.fromMap(
          (map['encryptionSpec'] as Map).cast<String, dynamic>()),
      endTime: map['endTime'] as String,
      error: GoogleRpcStatusResponse.fromMap(
          (map['error'] as Map).cast<String, dynamic>()),
      labels: (map['labels'] as Map).cast<String, String>(),
      maxFailedTrialCount: map['maxFailedTrialCount'] as int,
      maxTrialCount: map['maxTrialCount'] as int,
      name: map['name'] as String,
      parallelTrialCount: map['parallelTrialCount'] as int,
      startTime: map['startTime'] as String,
      state: map['state'] as String,
      studySpec: GoogleCloudAiplatformV1StudySpecResponse.fromMap(
          (map['studySpec'] as Map).cast<String, dynamic>()),
      trialJobSpec: GoogleCloudAiplatformV1CustomJobSpecResponse.fromMap(
          (map['trialJobSpec'] as Map).cast<String, dynamic>()),
      trials: Input.decodeList<GoogleCloudAiplatformV1TrialResponse>(
          map['trials'],
          (value) => GoogleCloudAiplatformV1TrialResponse.fromMap(
              (value as Map).cast<String, dynamic>())),
      updateTime: map['updateTime'] as String,
    );
  }
}
