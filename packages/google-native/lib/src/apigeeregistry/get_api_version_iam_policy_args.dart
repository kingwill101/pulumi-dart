// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_apigeeregistry_v1_get_api_version_iam_policy_args_doc}
/// Arguments for getApiVersionIamPolicy.
/// {@endtemplate}
/// {@macro pulumi_apigeeregistry_v1_get_api_version_iam_policy_args_doc}
class GetApiVersionIamPolicyArgs {
  final pulumi.Input<String> apiId;
  final pulumi.Input<String> location;
  final pulumi.Input<int>? optionsRequestedPolicyVersion;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> versionId;

  /// Creates a new [GetApiVersionIamPolicyArgs].
  /// [apiId] Required.
  /// [location] Required.
  /// [optionsRequestedPolicyVersion] Optional.
  /// [project] Optional.
  /// [versionId] Required.
  GetApiVersionIamPolicyArgs({
    required String apiId,
    required String location,
    int? optionsRequestedPolicyVersion,
    String? project,
    required String versionId,
  }) : apiId = pulumi.Input.asInput<String>(apiId),
       location = pulumi.Input.asInput<String>(location),
       optionsRequestedPolicyVersion = pulumi.Input.asOptionalInput<int>(
         optionsRequestedPolicyVersion,
       ),
       project = pulumi.Input.asOptionalInput<String>(project),
       versionId = pulumi.Input.asInput<String>(versionId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiId': apiId,
      'location': location,
      'optionsRequestedPolicyVersion': ?optionsRequestedPolicyVersion,
      'project': ?project,
      'versionId': versionId,
    };
  }

  factory GetApiVersionIamPolicyArgs.fromMap(Map<String, dynamic> map) {
    return GetApiVersionIamPolicyArgs(
      apiId: map['apiId'] as String,
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
