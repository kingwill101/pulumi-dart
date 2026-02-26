// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import 'google_cloud_aiplatform_v1beta1_custom_job_spec.dart';
import 'google_cloud_aiplatform_v1beta1_encryption_spec.dart';

/// The set of arguments for CustomJob.
class CustomJobArgs2 {
  /// The display name of the CustomJob. The name can be up to 128 characters long and can consist of any UTF-8 characters.
  final Input<String> displayName;

  /// Customer-managed encryption key options for a CustomJob. If this is set, then all resources created by the CustomJob will be encrypted with the provided encryption key.
  final Input<GoogleCloudAiplatformV1beta1EncryptionSpec>? encryptionSpec;

  /// Job spec.
  final Input<GoogleCloudAiplatformV1beta1CustomJobSpec> jobSpec;

  /// The labels with user-defined metadata to organize CustomJobs. Label keys and values can be no longer than 64 characters (Unicode codepoints), can only contain lowercase letters, numeric characters, underscores and dashes. International characters are allowed. See https://goo.gl/xmQnxf for more information and examples of labels.
  final Input<Map<String, String>>? labels;
  final Input<String>? location;
  final Input<String>? project;

  CustomJobArgs2({
    required this.displayName,
    this.encryptionSpec,
    required this.jobSpec,
    this.labels,
    this.location,
    this.project,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['displayName'] = displayName;
    final encryptionSpecValue = encryptionSpec;
    if (encryptionSpecValue != null) {
      map['encryptionSpec'] = Input.mapOptionalInputValue<
          GoogleCloudAiplatformV1beta1EncryptionSpec,
          Map<String, dynamic>>(encryptionSpecValue, (value) => value.toMap());
    }
    map['jobSpec'] = Input.mapInputValue<
        GoogleCloudAiplatformV1beta1CustomJobSpec,
        Map<String, dynamic>>(jobSpec, (value) => value.toMap());
    final labelsValue = labels;
    if (labelsValue != null) {
      map['labels'] = labelsValue;
    }
    final locationValue = location;
    if (locationValue != null) {
      map['location'] = locationValue;
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory CustomJobArgs2.fromMap(Map<String, dynamic> map) {
    return CustomJobArgs2(
      displayName: Input.asInput<String>(map['displayName']),
      encryptionSpec:
          Input.asOptionalInput<GoogleCloudAiplatformV1beta1EncryptionSpec>(
              map['encryptionSpec']),
      jobSpec: Input.asInput<GoogleCloudAiplatformV1beta1CustomJobSpec>(
          map['jobSpec']),
      labels: Input.asOptionalInput<Map<String, String>>(map['labels']),
      location: Input.asOptionalInput<String>(map['location']),
      project: Input.asOptionalInput<String>(map['project']),
    );
  }
}
