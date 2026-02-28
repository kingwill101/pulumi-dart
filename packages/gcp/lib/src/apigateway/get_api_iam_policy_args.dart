// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_apigateway_get_api_iam_policy_get_api_iam_policy_args_doc}
/// Arguments for getApiIamPolicy.
/// {@endtemplate}
/// {@macro pulumi_apigateway_get_api_iam_policy_get_api_iam_policy_args_doc}
class GetApiIamPolicyArgs {
  /// Used to find the parent resource to bind the IAM policy to
  final pulumi.Input<String> api;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the project will be parsed from the identifier of the parent resource. If no project is provided in the parent identifier and no project is specified, the provider project is used.
  final pulumi.Input<String>? project;

  /// Creates a new [GetApiIamPolicyArgs].
  /// [api] Used to find the parent resource to bind the IAM policy to
  /// [project] The ID of the project in which the resource belongs.
  GetApiIamPolicyArgs({
    required String api,
    String? project,
  })  : api = pulumi.Input.asInput<String>(api),
        project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['api'] = api;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory GetApiIamPolicyArgs.fromMap(Map<String, dynamic> map) {
    return GetApiIamPolicyArgs(
      api: map['api'] as String,
      project: map['project'] == null ? null : map['project'] as String,
    );
  }
}
