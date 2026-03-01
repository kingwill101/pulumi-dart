// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_cloudfunctions_get_function_iam_policy_get_function_iam_policy_args_doc}
/// Arguments for getFunctionIamPolicy.
/// {@endtemplate}
/// {@macro pulumi_cloudfunctions_get_function_iam_policy_get_function_iam_policy_args_doc}
class GetFunctionIamPolicyArgs {
  /// Used to find the parent resource to bind the IAM policy to
  final pulumi.Input<String> cloudFunction;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the project will be parsed from the identifier of the parent resource. If no project is provided in the parent identifier and no project is specified, the provider project is used.
  final pulumi.Input<String>? project;

  /// The location of this cloud function. Used to find the parent resource to bind the IAM policy to. If not specified,
  /// the value will be parsed from the identifier of the parent resource. If no region is provided in the parent identifier and no
  /// region is specified, it is taken from the provider configuration.
  final pulumi.Input<String>? region;

  /// Creates a new [GetFunctionIamPolicyArgs].
  /// [cloudFunction] Used to find the parent resource to bind the IAM policy to
  /// [project] The ID of the project in which the resource belongs.
  /// [region] The location of this cloud function. Used to find the parent resource to bind the IAM policy to. If not specified,
  GetFunctionIamPolicyArgs({
    required String cloudFunction,
    String? project,
    String? region,
  }) : cloudFunction = pulumi.Input.asInput<String>(cloudFunction),
       project = pulumi.Input.asOptionalInput<String>(project),
       region = pulumi.Input.asOptionalInput<String>(region);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cloudFunction': cloudFunction,
      'project': ?project,
      'region': ?region,
    };
  }

  factory GetFunctionIamPolicyArgs.fromMap(Map<String, dynamic> map) {
    return GetFunctionIamPolicyArgs(
      cloudFunction: map['cloudFunction'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      region: map['region'] == null ? null : map['region'] as String,
    );
  }
}
