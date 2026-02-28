// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_apigeeregistry_v1_get_api_version_spec_artifact_iam_policy_args_doc}
/// Arguments for getApiVersionSpecArtifactIamPolicy.
/// {@endtemplate}
/// {@macro pulumi_apigeeregistry_v1_get_api_version_spec_artifact_iam_policy_args_doc}
class GetApiVersionSpecArtifactIamPolicyArgs {
  final pulumi.Input<String> apiId;
  final pulumi.Input<String> artifactId;
  final pulumi.Input<String> location;
  final pulumi.Input<int>? optionsRequestedPolicyVersion;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> specId;
  final pulumi.Input<String> versionId;

  /// Creates a new [GetApiVersionSpecArtifactIamPolicyArgs].
  /// [apiId] Required.
  /// [artifactId] Required.
  /// [location] Required.
  /// [optionsRequestedPolicyVersion] Optional.
  /// [project] Optional.
  /// [specId] Required.
  /// [versionId] Required.
  GetApiVersionSpecArtifactIamPolicyArgs({
    required String apiId,
    required String artifactId,
    required String location,
    int? optionsRequestedPolicyVersion,
    String? project,
    required String specId,
    required String versionId,
  }) :
      apiId = pulumi.Input.asInput<String>(apiId),
      artifactId = pulumi.Input.asInput<String>(artifactId),
      location = pulumi.Input.asInput<String>(location),
      optionsRequestedPolicyVersion = pulumi.Input.asOptionalInput<int>(optionsRequestedPolicyVersion),
      project = pulumi.Input.asOptionalInput<String>(project),
      specId = pulumi.Input.asInput<String>(specId),
      versionId = pulumi.Input.asInput<String>(versionId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiId': apiId,
      'artifactId': artifactId,
      'location': location,
      'optionsRequestedPolicyVersion': ?optionsRequestedPolicyVersion,
      'project': ?project,
      'specId': specId,
      'versionId': versionId,
    };
  }

  factory GetApiVersionSpecArtifactIamPolicyArgs.fromMap(Map<String, dynamic> map) {
    return GetApiVersionSpecArtifactIamPolicyArgs(
      apiId: map['apiId'] as String,
      artifactId: map['artifactId'] as String,
      location: map['location'] as String,
      optionsRequestedPolicyVersion: map['optionsRequestedPolicyVersion'] == null ? null : map['optionsRequestedPolicyVersion'] as int,
      project: map['project'] == null ? null : map['project'] as String,
      specId: map['specId'] as String,
      versionId: map['versionId'] as String,
    );
  }
}

