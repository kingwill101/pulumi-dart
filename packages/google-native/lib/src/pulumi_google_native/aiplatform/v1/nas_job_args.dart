// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;
import 'google_cloud_aiplatform_v1_encryption_spec.dart';
import 'google_cloud_aiplatform_v1_nas_job_spec.dart';

/// The set of arguments for NasJob.
class NasJobArgs {
  /// The display name of the NasJob. The name can be up to 128 characters long and can consist of any UTF-8 characters.
  final Input<String> displayName;

  /// Optional. Enable a separation of Custom model training and restricted image training for tenant project.
  final Input<bool>? enableRestrictedImageTraining;

  /// Customer-managed encryption key options for a NasJob. If this is set, then all resources created by the NasJob will be encrypted with the provided encryption key.
  final Input<GoogleCloudAiplatformV1EncryptionSpec>? encryptionSpec;

  /// The labels with user-defined metadata to organize NasJobs. Label keys and values can be no longer than 64 characters (Unicode codepoints), can only contain lowercase letters, numeric characters, underscores and dashes. International characters are allowed. See https://goo.gl/xmQnxf for more information and examples of labels.
  final Input<Map<String, String>>? labels;
  final Input<String>? location;

  /// The specification of a NasJob.
  final Input<GoogleCloudAiplatformV1NasJobSpec> nasJobSpec;
  final Input<String>? project;

  NasJobArgs({
    required this.displayName,
    this.enableRestrictedImageTraining,
    this.encryptionSpec,
    this.labels,
    this.location,
    required this.nasJobSpec,
    this.project,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['displayName'] = displayName;
    final enableRestrictedImageTrainingValue = enableRestrictedImageTraining;
    if (enableRestrictedImageTrainingValue != null) {
      map['enableRestrictedImageTraining'] = enableRestrictedImageTrainingValue;
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
    map['nasJobSpec'] = Input.mapInputValue<GoogleCloudAiplatformV1NasJobSpec,
        Map<String, dynamic>>(nasJobSpec, (value) => value.toMap());
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory NasJobArgs.fromMap(Map<String, dynamic> map) {
    return NasJobArgs(
      displayName: Input.asInput<String>(map['displayName']),
      enableRestrictedImageTraining:
          Input.asOptionalInput<bool>(map['enableRestrictedImageTraining']),
      encryptionSpec:
          Input.asOptionalInput<GoogleCloudAiplatformV1EncryptionSpec>(
              map['encryptionSpec']),
      labels: Input.asOptionalInput<Map<String, String>>(map['labels']),
      location: Input.asOptionalInput<String>(map['location']),
      nasJobSpec:
          Input.asInput<GoogleCloudAiplatformV1NasJobSpec>(map['nasJobSpec']),
      project: Input.asOptionalInput<String>(map['project']),
    );
  }
}
