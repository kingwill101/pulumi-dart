// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_apigateway_get_api_config_iam_policy_get_api_config_iam_policy_args_doc}
/// Arguments for getApiConfigIamPolicy.
/// {@endtemplate}
/// {@macro pulumi_apigateway_get_api_config_iam_policy_get_api_config_iam_policy_args_doc}
class GetApiConfigIamPolicyArgs {
  /// The API to attach the config to.
  /// Used to find the parent resource to bind the IAM policy to
  final pulumi.Input<String> api;
  /// Used to find the parent resource to bind the IAM policy to
  final pulumi.Input<String> apiConfig;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the project will be parsed from the identifier of the parent resource. If no project is provided in the parent identifier and no project is specified, the provider project is used.
  final pulumi.Input<String>? project;

  /// Creates a new [GetApiConfigIamPolicyArgs].
  /// [api] The API to attach the config to.
  /// [apiConfig] Used to find the parent resource to bind the IAM policy to
  /// [project] The ID of the project in which the resource belongs.
  GetApiConfigIamPolicyArgs({
    required String api,
    required String apiConfig,
    String? project,
  }) :
      api = pulumi.Input.asInput<String>(api),
      apiConfig = pulumi.Input.asInput<String>(apiConfig),
      project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'api': api,
      'apiConfig': apiConfig,
      'project': ?project,
    };
  }

  factory GetApiConfigIamPolicyArgs.fromMap(Map<String, dynamic> map) {
    return GetApiConfigIamPolicyArgs(
      api: map['api'] as String,
      apiConfig: map['apiConfig'] as String,
      project: map['project'] == null ? null : map['project'] as String,
    );
  }
}

