// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_aiplatform_v1_custom_job_spec.dart';
import 'google_cloud_aiplatform_v1_encryption_spec.dart';

/// {@template pulumi_aiplatform_v1_custom_job_args_doc}
/// The set of arguments for CustomJob.
/// {@endtemplate}
/// {@macro pulumi_aiplatform_v1_custom_job_args_doc}
class CustomJobArgs {
  /// The display name of the CustomJob. The name can be up to 128 characters long and can consist of any UTF-8 characters.
  final pulumi.Input<String> displayName;
  /// Customer-managed encryption key options for a CustomJob. If this is set, then all resources created by the CustomJob will be encrypted with the provided encryption key.
  final pulumi.Input<GoogleCloudAiplatformV1EncryptionSpec>? encryptionSpec;
  /// Job spec.
  final pulumi.Input<GoogleCloudAiplatformV1CustomJobSpec> jobSpec;
  /// The labels with user-defined metadata to organize CustomJobs. Label keys and values can be no longer than 64 characters (Unicode codepoints), can only contain lowercase letters, numeric characters, underscores and dashes. International characters are allowed. See https://goo.gl/xmQnxf for more information and examples of labels.
  final pulumi.Input<Map<String, String>>? labels;
  final pulumi.Input<String>? location;
  final pulumi.Input<String>? project;

  /// Creates a new [CustomJobArgs].
  /// [displayName] The display name of the CustomJob. The name can be up to 128 characters long and can consist of any UTF-8 characters.
  /// [encryptionSpec] Customer-managed encryption key options for a CustomJob. If this is set, then all resources created by the CustomJob will be encrypted with the provided encryption key.
  /// [jobSpec] Job spec.
  /// [labels] The labels with user-defined metadata to organize CustomJobs. Label keys and values can be no longer than 64 characters (Unicode codepoints), can only contain lowercase letters, numeric characters, underscores and dashes. International characters are allowed. See https://goo.gl/xmQnxf for more information and examples of labels.
  /// [location] Optional.
  /// [project] Optional.
  CustomJobArgs({
    required String displayName,
    GoogleCloudAiplatformV1EncryptionSpec? encryptionSpec,
    required GoogleCloudAiplatformV1CustomJobSpec jobSpec,
    Map<String, String>? labels,
    String? location,
    String? project,
  }) :
      displayName = pulumi.Input.asInput<String>(displayName),
      encryptionSpec = pulumi.Input.asOptionalInput<GoogleCloudAiplatformV1EncryptionSpec>(encryptionSpec),
      jobSpec = pulumi.Input.asInput<GoogleCloudAiplatformV1CustomJobSpec>(jobSpec),
      labels = pulumi.Input.asOptionalInput<Map<String, String>>(labels),
      location = pulumi.Input.asOptionalInput<String>(location),
      project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'displayName': displayName,
      'encryptionSpec': ?pulumi.Input.mapOptionalInputValue<GoogleCloudAiplatformV1EncryptionSpec, Map<String, dynamic>>(encryptionSpec, (value) => value.toMap()),
      'jobSpec': pulumi.Input.mapInputValue<GoogleCloudAiplatformV1CustomJobSpec, Map<String, dynamic>>(jobSpec, (value) => value.toMap()),
      'labels': ?labels,
      'location': ?location,
      'project': ?project,
    };
  }

  factory CustomJobArgs.fromMap(Map<String, dynamic> map) {
    return CustomJobArgs(
      displayName: map['displayName'] as String,
      encryptionSpec: map['encryptionSpec'] == null ? null : GoogleCloudAiplatformV1EncryptionSpec.fromMap((map['encryptionSpec'] as Map).cast<String, dynamic>()),
      jobSpec: GoogleCloudAiplatformV1CustomJobSpec.fromMap((map['jobSpec'] as Map).cast<String, dynamic>()),
      labels: map['labels'] == null ? null : (map['labels'] as Map).cast<String, String>(),
      location: map['location'] == null ? null : map['location'] as String,
      project: map['project'] == null ? null : map['project'] as String,
    );
  }
}

