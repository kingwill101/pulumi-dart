// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_aiplatform_v1beta1_custom_job_spec.dart';
import 'google_cloud_aiplatform_v1beta1_encryption_spec.dart';
import 'google_cloud_aiplatform_v1beta1_study_spec.dart';

/// {@template pulumi_aiplatform_v1beta1_hyperparameter_tuning_job_aiplatform_v1beta1_args_doc}
/// The set of arguments for HyperparameterTuningJob.
/// {@endtemplate}
/// {@macro pulumi_aiplatform_v1beta1_hyperparameter_tuning_job_aiplatform_v1beta1_args_doc}
class HyperparameterTuningJobAiplatformV1beta1Args {
  /// The display name of the HyperparameterTuningJob. The name can be up to 128 characters long and can consist of any UTF-8 characters.
  final pulumi.Input<String> displayName;
  /// Customer-managed encryption key options for a HyperparameterTuningJob. If this is set, then all resources created by the HyperparameterTuningJob will be encrypted with the provided encryption key.
  final pulumi.Input<GoogleCloudAiplatformV1beta1EncryptionSpec>? encryptionSpec;
  /// The labels with user-defined metadata to organize HyperparameterTuningJobs. Label keys and values can be no longer than 64 characters (Unicode codepoints), can only contain lowercase letters, numeric characters, underscores and dashes. International characters are allowed. See https://goo.gl/xmQnxf for more information and examples of labels.
  final pulumi.Input<Map<String, String>>? labels;
  final pulumi.Input<String>? location;
  /// The number of failed Trials that need to be seen before failing the HyperparameterTuningJob. If set to 0, Vertex AI decides how many Trials must fail before the whole job fails.
  final pulumi.Input<int>? maxFailedTrialCount;
  /// The desired total number of Trials.
  final pulumi.Input<int> maxTrialCount;
  /// The desired number of Trials to run in parallel.
  final pulumi.Input<int> parallelTrialCount;
  final pulumi.Input<String>? project;
  /// Study configuration of the HyperparameterTuningJob.
  final pulumi.Input<GoogleCloudAiplatformV1beta1StudySpec> studySpec;
  /// The spec of a trial job. The same spec applies to the CustomJobs created in all the trials.
  final pulumi.Input<GoogleCloudAiplatformV1beta1CustomJobSpec> trialJobSpec;

  /// Creates a new [HyperparameterTuningJobAiplatformV1beta1Args].
  /// [displayName] The display name of the HyperparameterTuningJob. The name can be up to 128 characters long and can consist of any UTF-8 characters.
  /// [encryptionSpec] Customer-managed encryption key options for a HyperparameterTuningJob. If this is set, then all resources created by the HyperparameterTuningJob will be encrypted with the provided encryption key.
  /// [labels] The labels with user-defined metadata to organize HyperparameterTuningJobs. Label keys and values can be no longer than 64 characters (Unicode codepoints), can only contain lowercase letters, numeric characters, underscores and dashes. International characters are allowed. See https://goo.gl/xmQnxf for more information and examples of labels.
  /// [location] Optional.
  /// [maxFailedTrialCount] The number of failed Trials that need to be seen before failing the HyperparameterTuningJob. If set to 0, Vertex AI decides how many Trials must fail before the whole job fails.
  /// [maxTrialCount] The desired total number of Trials.
  /// [parallelTrialCount] The desired number of Trials to run in parallel.
  /// [project] Optional.
  /// [studySpec] Study configuration of the HyperparameterTuningJob.
  /// [trialJobSpec] The spec of a trial job. The same spec applies to the CustomJobs created in all the trials.
  HyperparameterTuningJobAiplatformV1beta1Args({
    required String displayName,
    GoogleCloudAiplatformV1beta1EncryptionSpec? encryptionSpec,
    Map<String, String>? labels,
    String? location,
    int? maxFailedTrialCount,
    required int maxTrialCount,
    required int parallelTrialCount,
    String? project,
    required GoogleCloudAiplatformV1beta1StudySpec studySpec,
    required GoogleCloudAiplatformV1beta1CustomJobSpec trialJobSpec,
  }) :
      displayName = pulumi.Input.asInput<String>(displayName),
      encryptionSpec = pulumi.Input.asOptionalInput<GoogleCloudAiplatformV1beta1EncryptionSpec>(encryptionSpec),
      labels = pulumi.Input.asOptionalInput<Map<String, String>>(labels),
      location = pulumi.Input.asOptionalInput<String>(location),
      maxFailedTrialCount = pulumi.Input.asOptionalInput<int>(maxFailedTrialCount),
      maxTrialCount = pulumi.Input.asInput<int>(maxTrialCount),
      parallelTrialCount = pulumi.Input.asInput<int>(parallelTrialCount),
      project = pulumi.Input.asOptionalInput<String>(project),
      studySpec = pulumi.Input.asInput<GoogleCloudAiplatformV1beta1StudySpec>(studySpec),
      trialJobSpec = pulumi.Input.asInput<GoogleCloudAiplatformV1beta1CustomJobSpec>(trialJobSpec);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'displayName': displayName,
      'encryptionSpec': ?pulumi.Input.mapOptionalInputValue<GoogleCloudAiplatformV1beta1EncryptionSpec, Map<String, dynamic>>(encryptionSpec, (value) => value.toMap()),
      'labels': ?labels,
      'location': ?location,
      'maxFailedTrialCount': ?maxFailedTrialCount,
      'maxTrialCount': maxTrialCount,
      'parallelTrialCount': parallelTrialCount,
      'project': ?project,
      'studySpec': pulumi.Input.mapInputValue<GoogleCloudAiplatformV1beta1StudySpec, Map<String, dynamic>>(studySpec, (value) => value.toMap()),
      'trialJobSpec': pulumi.Input.mapInputValue<GoogleCloudAiplatformV1beta1CustomJobSpec, Map<String, dynamic>>(trialJobSpec, (value) => value.toMap()),
    };
  }

  factory HyperparameterTuningJobAiplatformV1beta1Args.fromMap(Map<String, dynamic> map) {
    return HyperparameterTuningJobAiplatformV1beta1Args(
      displayName: map['displayName'] as String,
      encryptionSpec: map['encryptionSpec'] == null ? null : GoogleCloudAiplatformV1beta1EncryptionSpec.fromMap((map['encryptionSpec'] as Map).cast<String, dynamic>()),
      labels: map['labels'] == null ? null : (map['labels'] as Map).cast<String, String>(),
      location: map['location'] == null ? null : map['location'] as String,
      maxFailedTrialCount: map['maxFailedTrialCount'] == null ? null : map['maxFailedTrialCount'] as int,
      maxTrialCount: map['maxTrialCount'] as int,
      parallelTrialCount: map['parallelTrialCount'] as int,
      project: map['project'] == null ? null : map['project'] as String,
      studySpec: GoogleCloudAiplatformV1beta1StudySpec.fromMap((map['studySpec'] as Map).cast<String, dynamic>()),
      trialJobSpec: GoogleCloudAiplatformV1beta1CustomJobSpec.fromMap((map['trialJobSpec'] as Map).cast<String, dynamic>()),
    );
  }
}

