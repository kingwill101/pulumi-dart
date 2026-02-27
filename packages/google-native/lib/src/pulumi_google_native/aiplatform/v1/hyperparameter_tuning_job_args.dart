// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;
import 'google_cloud_aiplatform_v1_custom_job_spec.dart';
import 'google_cloud_aiplatform_v1_encryption_spec.dart';
import 'google_cloud_aiplatform_v1_study_spec.dart';

/// The set of arguments for HyperparameterTuningJob.
class HyperparameterTuningJobArgs {
  /// The display name of the HyperparameterTuningJob. The name can be up to 128 characters long and can consist of any UTF-8 characters.
  final Input<String> displayName;

  /// Customer-managed encryption key options for a HyperparameterTuningJob. If this is set, then all resources created by the HyperparameterTuningJob will be encrypted with the provided encryption key.
  final Input<GoogleCloudAiplatformV1EncryptionSpec>? encryptionSpec;

  /// The labels with user-defined metadata to organize HyperparameterTuningJobs. Label keys and values can be no longer than 64 characters (Unicode codepoints), can only contain lowercase letters, numeric characters, underscores and dashes. International characters are allowed. See https://goo.gl/xmQnxf for more information and examples of labels.
  final Input<Map<String, String>>? labels;
  final Input<String>? location;

  /// The number of failed Trials that need to be seen before failing the HyperparameterTuningJob. If set to 0, Vertex AI decides how many Trials must fail before the whole job fails.
  final Input<int>? maxFailedTrialCount;

  /// The desired total number of Trials.
  final Input<int> maxTrialCount;

  /// The desired number of Trials to run in parallel.
  final Input<int> parallelTrialCount;
  final Input<String>? project;

  /// Study configuration of the HyperparameterTuningJob.
  final Input<GoogleCloudAiplatformV1StudySpec> studySpec;

  /// The spec of a trial job. The same spec applies to the CustomJobs created in all the trials.
  final Input<GoogleCloudAiplatformV1CustomJobSpec> trialJobSpec;

  HyperparameterTuningJobArgs({
    required this.displayName,
    this.encryptionSpec,
    this.labels,
    this.location,
    this.maxFailedTrialCount,
    required this.maxTrialCount,
    required this.parallelTrialCount,
    this.project,
    required this.studySpec,
    required this.trialJobSpec,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['displayName'] = displayName;
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
    final maxFailedTrialCountValue = maxFailedTrialCount;
    if (maxFailedTrialCountValue != null) {
      map['maxFailedTrialCount'] = maxFailedTrialCountValue;
    }
    map['maxTrialCount'] = maxTrialCount;
    map['parallelTrialCount'] = parallelTrialCount;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['studySpec'] = Input.mapInputValue<GoogleCloudAiplatformV1StudySpec,
        Map<String, dynamic>>(studySpec, (value) => value.toMap());
    map['trialJobSpec'] = Input.mapInputValue<
        GoogleCloudAiplatformV1CustomJobSpec,
        Map<String, dynamic>>(trialJobSpec, (value) => value.toMap());
    return map;
  }

  factory HyperparameterTuningJobArgs.fromMap(Map<String, dynamic> map) {
    return HyperparameterTuningJobArgs(
      displayName: Input.asInput<String>(map['displayName']),
      encryptionSpec:
          Input.asOptionalInput<GoogleCloudAiplatformV1EncryptionSpec>(
              map['encryptionSpec']),
      labels: Input.asOptionalInput<Map<String, String>>(map['labels']),
      location: Input.asOptionalInput<String>(map['location']),
      maxFailedTrialCount:
          Input.asOptionalInput<int>(map['maxFailedTrialCount']),
      maxTrialCount: Input.asInput<int>(map['maxTrialCount']),
      parallelTrialCount: Input.asInput<int>(map['parallelTrialCount']),
      project: Input.asOptionalInput<String>(map['project']),
      studySpec:
          Input.asInput<GoogleCloudAiplatformV1StudySpec>(map['studySpec']),
      trialJobSpec: Input.asInput<GoogleCloudAiplatformV1CustomJobSpec>(
          map['trialJobSpec']),
    );
  }
}
