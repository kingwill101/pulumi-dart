// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_apigateway_v1beta_get_api_iam_policy_apigateway_v1beta_args_doc}
/// Arguments for getApiIamPolicy.
/// {@endtemplate}
/// {@macro pulumi_apigateway_v1beta_get_api_iam_policy_apigateway_v1beta_args_doc}
class GetApiIamPolicyApigatewayV1betaArgs {
  final pulumi.Input<String> apiId;
  final pulumi.Input<String> location;
  final pulumi.Input<int>? optionsRequestedPolicyVersion;
  final pulumi.Input<String>? project;

  /// Creates a new [GetApiIamPolicyApigatewayV1betaArgs].
  /// [apiId] Required.
  /// [location] Required.
  /// [optionsRequestedPolicyVersion] Optional.
  /// [project] Optional.
  GetApiIamPolicyApigatewayV1betaArgs({
    required String apiId,
    required String location,
    int? optionsRequestedPolicyVersion,
    String? project,
  }) : apiId = pulumi.Input.asInput<String>(apiId),
       location = pulumi.Input.asInput<String>(location),
       optionsRequestedPolicyVersion = pulumi.Input.asOptionalInput<int>(
         optionsRequestedPolicyVersion,
       ),
       project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiId': apiId,
      'location': location,
      'optionsRequestedPolicyVersion': ?optionsRequestedPolicyVersion,
      'project': ?project,
    };
  }

  factory GetApiIamPolicyApigatewayV1betaArgs.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetApiIamPolicyApigatewayV1betaArgs(
      apiId: map['apiId'] as String,
      location: map['location'] as String,
      optionsRequestedPolicyVersion:
          map['optionsRequestedPolicyVersion'] == null
          ? null
          : map['optionsRequestedPolicyVersion'] as int,
      project: map['project'] == null ? null : map['project'] as String,
    );
  }
}
