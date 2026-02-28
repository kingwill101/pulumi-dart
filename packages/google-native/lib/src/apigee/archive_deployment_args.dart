// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_apigee_v1_archive_deployment_args_doc}
/// The set of arguments for ArchiveDeployment.
/// {@endtemplate}
/// {@macro pulumi_apigee_v1_archive_deployment_args_doc}
class ArchiveDeploymentArgs {
  final pulumi.Input<String> environmentId;
  /// Input only. The Google Cloud Storage signed URL returned from GenerateUploadUrl and used to upload the Archive zip file.
  final pulumi.Input<String>? gcsUri;
  /// User-supplied key-value pairs used to organize ArchiveDeployments. Label keys must be between 1 and 63 characters long, have a UTF-8 encoding of maximum 128 bytes, and must conform to the following PCRE regular expression: \p{Ll}\p{Lo}{0,62} Label values must be between 1 and 63 characters long, have a UTF-8 encoding of maximum 128 bytes, and must conform to the following PCRE regular expression: [\p{Ll}\p{Lo}\p{N}_-]{0,63} No more than 64 labels can be associated with a given store.
  final pulumi.Input<Map<String, String>>? labels;
  /// Name of the Archive Deployment in the following format: `organizations/{org}/environments/{env}/archiveDeployments/{id}`.
  final pulumi.Input<String>? name;
  final pulumi.Input<String> organizationId;

  /// Creates a new [ArchiveDeploymentArgs].
  /// [environmentId] Required.
  /// [gcsUri] Input only. The Google Cloud Storage signed URL returned from GenerateUploadUrl and used to upload the Archive zip file.
  /// [labels] User-supplied key-value pairs used to organize ArchiveDeployments. Label keys must be between 1 and 63 characters long, have a UTF-8 encoding of maximum 128 bytes, and must conform to the following PCRE regular expression: \p{Ll}\p{Lo}{0,62} Label values must be between 1 and 63 characters long, have a UTF-8 encoding of maximum 128 bytes, and must conform to the following PCRE regular expression: [\p{Ll}\p{Lo}\p{N}_-]{0,63} No more than 64 labels can be associated with a given store.
  /// [name] Name of the Archive Deployment in the following format: `organizations/{org}/environments/{env}/archiveDeployments/{id}`.
  /// [organizationId] Required.
  ArchiveDeploymentArgs({
    required String environmentId,
    String? gcsUri,
    Map<String, String>? labels,
    String? name,
    required String organizationId,
  }) :
      environmentId = pulumi.Input.asInput<String>(environmentId),
      gcsUri = pulumi.Input.asOptionalInput<String>(gcsUri),
      labels = pulumi.Input.asOptionalInput<Map<String, String>>(labels),
      name = pulumi.Input.asOptionalInput<String>(name),
      organizationId = pulumi.Input.asInput<String>(organizationId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'environmentId': environmentId,
      'gcsUri': ?gcsUri,
      'labels': ?labels,
      'name': ?name,
      'organizationId': organizationId,
    };
  }

  factory ArchiveDeploymentArgs.fromMap(Map<String, dynamic> map) {
    return ArchiveDeploymentArgs(
      environmentId: map['environmentId'] as String,
      gcsUri: map['gcsUri'] == null ? null : map['gcsUri'] as String,
      labels: map['labels'] == null ? null : (map['labels'] as Map).cast<String, String>(),
      name: map['name'] == null ? null : map['name'] as String,
      organizationId: map['organizationId'] as String,
    );
  }
}

