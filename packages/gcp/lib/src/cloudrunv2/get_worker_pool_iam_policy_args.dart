// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_cloudrunv2_get_worker_pool_iam_policy_get_worker_pool_iam_policy_args_doc}
/// Arguments for getWorkerPoolIamPolicy.
/// {@endtemplate}
/// {@macro pulumi_cloudrunv2_get_worker_pool_iam_policy_get_worker_pool_iam_policy_args_doc}
class GetWorkerPoolIamPolicyArgs {
  /// The location of the cloud run worker pool Used to find the parent resource to bind the IAM policy to. If not specified,
  /// the value will be parsed from the identifier of the parent resource. If no location is provided in the parent identifier and no
  /// location is specified, it is taken from the provider configuration.
  final pulumi.Input<String>? location;
  /// Used to find the parent resource to bind the IAM policy to
  final pulumi.Input<String> name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the project will be parsed from the identifier of the parent resource. If no project is provided in the parent identifier and no project is specified, the provider project is used.
  final pulumi.Input<String>? project;

  /// Creates a new [GetWorkerPoolIamPolicyArgs].
  /// [location] The location of the cloud run worker pool Used to find the parent resource to bind the IAM policy to. If not specified,
  /// [name] Used to find the parent resource to bind the IAM policy to
  /// [project] The ID of the project in which the resource belongs.
  GetWorkerPoolIamPolicyArgs({
    String? location,
    required String name,
    String? project,
  }) :
      location = pulumi.Input.asOptionalInput<String>(location),
      name = pulumi.Input.asInput<String>(name),
      project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': ?location,
      'name': name,
      'project': ?project,
    };
  }

  factory GetWorkerPoolIamPolicyArgs.fromMap(Map<String, dynamic> map) {
    return GetWorkerPoolIamPolicyArgs(
      location: map['location'] == null ? null : map['location'] as String,
      name: map['name'] as String,
      project: map['project'] == null ? null : map['project'] as String,
    );
  }
}

