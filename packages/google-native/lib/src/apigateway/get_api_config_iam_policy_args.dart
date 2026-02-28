// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_apigateway_v1_get_api_config_iam_policy_args_doc}
/// Arguments for getApiConfigIamPolicy.
/// {@endtemplate}
/// {@macro pulumi_apigateway_v1_get_api_config_iam_policy_args_doc}
class GetApiConfigIamPolicyArgs {
  final pulumi.Input<String> apiId;
  final pulumi.Input<String> configId;
  final pulumi.Input<String> location;
  final pulumi.Input<int>? optionsRequestedPolicyVersion;
  final pulumi.Input<String>? project;

  /// Creates a new [GetApiConfigIamPolicyArgs].
  /// [apiId] Required.
  /// [configId] Required.
  /// [location] Required.
  /// [optionsRequestedPolicyVersion] Optional.
  /// [project] Optional.
  GetApiConfigIamPolicyArgs({
    required String apiId,
    required String configId,
    required String location,
    int? optionsRequestedPolicyVersion,
    String? project,
  }) :
      apiId = pulumi.Input.asInput<String>(apiId),
      configId = pulumi.Input.asInput<String>(configId),
      location = pulumi.Input.asInput<String>(location),
      optionsRequestedPolicyVersion = pulumi.Input.asOptionalInput<int>(optionsRequestedPolicyVersion),
      project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiId': apiId,
      'configId': configId,
      'location': location,
      'optionsRequestedPolicyVersion': ?optionsRequestedPolicyVersion,
      'project': ?project,
    };
  }

  factory GetApiConfigIamPolicyArgs.fromMap(Map<String, dynamic> map) {
    return GetApiConfigIamPolicyArgs(
      apiId: map['apiId'] as String,
      configId: map['configId'] as String,
      location: map['location'] as String,
      optionsRequestedPolicyVersion: map['optionsRequestedPolicyVersion'] == null ? null : map['optionsRequestedPolicyVersion'] as int,
      project: map['project'] == null ? null : map['project'] as String,
    );
  }
}

