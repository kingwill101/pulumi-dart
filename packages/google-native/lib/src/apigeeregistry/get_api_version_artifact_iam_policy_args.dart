// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_apigeeregistry_v1_get_api_version_artifact_iam_policy_args_doc}
/// Arguments for getApiVersionArtifactIamPolicy.
/// {@endtemplate}
/// {@macro pulumi_apigeeregistry_v1_get_api_version_artifact_iam_policy_args_doc}
class GetApiVersionArtifactIamPolicyArgs {
  final pulumi.Input<String> apiId;
  final pulumi.Input<String> artifactId;
  final pulumi.Input<String> location;
  final pulumi.Input<int>? optionsRequestedPolicyVersion;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> versionId;

  /// Creates a new [GetApiVersionArtifactIamPolicyArgs].
  /// [apiId] Required.
  /// [artifactId] Required.
  /// [location] Required.
  /// [optionsRequestedPolicyVersion] Optional.
  /// [project] Optional.
  /// [versionId] Required.
  GetApiVersionArtifactIamPolicyArgs({
    required String apiId,
    required String artifactId,
    required String location,
    int? optionsRequestedPolicyVersion,
    String? project,
    required String versionId,
  })  : apiId = pulumi.Input.asInput<String>(apiId),
        artifactId = pulumi.Input.asInput<String>(artifactId),
        location = pulumi.Input.asInput<String>(location),
        optionsRequestedPolicyVersion =
            pulumi.Input.asOptionalInput<int>(optionsRequestedPolicyVersion),
        project = pulumi.Input.asOptionalInput<String>(project),
        versionId = pulumi.Input.asInput<String>(versionId);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['apiId'] = apiId;
    map['artifactId'] = artifactId;
    map['location'] = location;
    final optionsRequestedPolicyVersionValue = optionsRequestedPolicyVersion;
    if (optionsRequestedPolicyVersionValue != null) {
      map['optionsRequestedPolicyVersion'] = optionsRequestedPolicyVersionValue;
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['versionId'] = versionId;
    return map;
  }

  factory GetApiVersionArtifactIamPolicyArgs.fromMap(Map<String, dynamic> map) {
    return GetApiVersionArtifactIamPolicyArgs(
      apiId: map['apiId'] as String,
      artifactId: map['artifactId'] as String,
      location: map['location'] as String,
      optionsRequestedPolicyVersion:
          map['optionsRequestedPolicyVersion'] == null
              ? null
              : map['optionsRequestedPolicyVersion'] as int,
      project: map['project'] == null ? null : map['project'] as String,
      versionId: map['versionId'] as String,
    );
  }
}
