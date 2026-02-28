// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_apigeeregistry_v1_get_api_version_spec_iam_policy_args_doc}
/// Arguments for getApiVersionSpecIamPolicy.
/// {@endtemplate}
/// {@macro pulumi_apigeeregistry_v1_get_api_version_spec_iam_policy_args_doc}
class GetApiVersionSpecIamPolicyArgs {
  final pulumi.Input<String> apiId;
  final pulumi.Input<String> location;
  final pulumi.Input<int>? optionsRequestedPolicyVersion;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> specId;
  final pulumi.Input<String> versionId;

  /// Creates a new [GetApiVersionSpecIamPolicyArgs].
  /// [apiId] Required.
  /// [location] Required.
  /// [optionsRequestedPolicyVersion] Optional.
  /// [project] Optional.
  /// [specId] Required.
  /// [versionId] Required.
  GetApiVersionSpecIamPolicyArgs({
    required String apiId,
    required String location,
    int? optionsRequestedPolicyVersion,
    String? project,
    required String specId,
    required String versionId,
  })  : apiId = pulumi.Input.asInput<String>(apiId),
        location = pulumi.Input.asInput<String>(location),
        optionsRequestedPolicyVersion =
            pulumi.Input.asOptionalInput<int>(optionsRequestedPolicyVersion),
        project = pulumi.Input.asOptionalInput<String>(project),
        specId = pulumi.Input.asInput<String>(specId),
        versionId = pulumi.Input.asInput<String>(versionId);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['apiId'] = apiId;
    map['location'] = location;
    final optionsRequestedPolicyVersionValue = optionsRequestedPolicyVersion;
    if (optionsRequestedPolicyVersionValue != null) {
      map['optionsRequestedPolicyVersion'] = optionsRequestedPolicyVersionValue;
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['specId'] = specId;
    map['versionId'] = versionId;
    return map;
  }

  factory GetApiVersionSpecIamPolicyArgs.fromMap(Map<String, dynamic> map) {
    return GetApiVersionSpecIamPolicyArgs(
      apiId: map['apiId'] as String,
      location: map['location'] as String,
      optionsRequestedPolicyVersion:
          map['optionsRequestedPolicyVersion'] == null
              ? null
              : map['optionsRequestedPolicyVersion'] as int,
      project: map['project'] == null ? null : map['project'] as String,
      specId: map['specId'] as String,
      versionId: map['versionId'] as String,
    );
  }
}
