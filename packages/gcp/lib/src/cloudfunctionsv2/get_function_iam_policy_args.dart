// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_cloudfunctionsv2_get_function_iam_policy_get_function_iam_policy_args_doc}
/// Arguments for getFunctionIamPolicy.
/// {@endtemplate}
/// {@macro pulumi_cloudfunctionsv2_get_function_iam_policy_get_function_iam_policy_args_doc}
class GetFunctionIamPolicyArgs {
  /// Used to find the parent resource to bind the IAM policy to
  final pulumi.Input<String> cloudFunction;
  /// The location of this cloud function. Used to find the parent resource to bind the IAM policy to. If not specified,
  /// the value will be parsed from the identifier of the parent resource. If no location is provided in the parent identifier and no
  /// location is specified, it is taken from the provider configuration.
  final pulumi.Input<String>? location;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the project will be parsed from the identifier of the parent resource. If no project is provided in the parent identifier and no project is specified, the provider project is used.
  final pulumi.Input<String>? project;

  /// Creates a new [GetFunctionIamPolicyArgs].
  /// [cloudFunction] Used to find the parent resource to bind the IAM policy to
  /// [location] The location of this cloud function. Used to find the parent resource to bind the IAM policy to. If not specified,
  /// [project] The ID of the project in which the resource belongs.
  GetFunctionIamPolicyArgs({
    required String cloudFunction,
    String? location,
    String? project,
  }) :
      cloudFunction = pulumi.Input.asInput<String>(cloudFunction),
      location = pulumi.Input.asOptionalInput<String>(location),
      project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cloudFunction': cloudFunction,
      'location': ?location,
      'project': ?project,
    };
  }

  factory GetFunctionIamPolicyArgs.fromMap(Map<String, dynamic> map) {
    return GetFunctionIamPolicyArgs(
      cloudFunction: map['cloudFunction'] as String,
      location: map['location'] == null ? null : map['location'] as String,
      project: map['project'] == null ? null : map['project'] as String,
    );
  }
}

