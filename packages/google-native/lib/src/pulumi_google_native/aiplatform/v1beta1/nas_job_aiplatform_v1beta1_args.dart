// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_aiplatform_v1beta1_encryption_spec.dart';
import 'google_cloud_aiplatform_v1beta1_nas_job_spec.dart';

/// The set of arguments for NasJob.
class NasJobAiplatformV1beta1Args {
  /// The display name of the NasJob. The name can be up to 128 characters long and can consist of any UTF-8 characters.
  final pulumi.Input<String> displayName;

  /// Optional. Enable a separation of Custom model training and restricted image training for tenant project.
  final pulumi.Input<bool>? enableRestrictedImageTraining;

  /// Customer-managed encryption key options for a NasJob. If this is set, then all resources created by the NasJob will be encrypted with the provided encryption key.
  final pulumi.Input<GoogleCloudAiplatformV1beta1EncryptionSpec>?
      encryptionSpec;

  /// The labels with user-defined metadata to organize NasJobs. Label keys and values can be no longer than 64 characters (Unicode codepoints), can only contain lowercase letters, numeric characters, underscores and dashes. International characters are allowed. See https://goo.gl/xmQnxf for more information and examples of labels.
  final pulumi.Input<Map<String, String>>? labels;
  final pulumi.Input<String>? location;

  /// The specification of a NasJob.
  final pulumi.Input<GoogleCloudAiplatformV1beta1NasJobSpec> nasJobSpec;
  final pulumi.Input<String>? project;

  NasJobAiplatformV1beta1Args({
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
    map['nasJobSpec'] = pulumi.Input.mapInputValue<
        GoogleCloudAiplatformV1beta1NasJobSpec,
        Map<String, dynamic>>(nasJobSpec, (value) => value.toMap());
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory NasJobAiplatformV1beta1Args.fromMap(Map<String, dynamic> map) {
    return NasJobAiplatformV1beta1Args(
      displayName: pulumi.Input.asInput<String>(map['displayName']),
      enableRestrictedImageTraining: pulumi.Input.asOptionalInput<bool>(
          map['enableRestrictedImageTraining']),
      encryptionSpec: pulumi.Input.asOptionalInput<
          GoogleCloudAiplatformV1beta1EncryptionSpec>(map['encryptionSpec']),
      labels: pulumi.Input.asOptionalInput<Map<String, String>>(map['labels']),
      location: pulumi.Input.asOptionalInput<String>(map['location']),
      nasJobSpec: pulumi.Input.asInput<GoogleCloudAiplatformV1beta1NasJobSpec>(
          map['nasJobSpec']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
    );
  }
}
