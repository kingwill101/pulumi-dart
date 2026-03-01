// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_compute_get_region_backend_service_iam_policy_get_region_backend_service_iam_policy_args_doc}
/// Arguments for getRegionBackendServiceIamPolicy.
/// {@endtemplate}
/// {@macro pulumi_compute_get_region_backend_service_iam_policy_get_region_backend_service_iam_policy_args_doc}
class GetRegionBackendServiceIamPolicyArgs {
  /// Used to find the parent resource to bind the IAM policy to
  final pulumi.Input<String> name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the project will be parsed from the identifier of the parent resource. If no project is provided in the parent identifier and no project is specified, the provider project is used.
  final pulumi.Input<String>? project;
  /// The Region in which the created backend service should reside.
  /// If it is not provided, the provider region is used.
  /// Used to find the parent resource to bind the IAM policy to. If not specified,
  /// the value will be parsed from the identifier of the parent resource. If no region is provided in the parent identifier and no
  /// region is specified, it is taken from the provider configuration.
  final pulumi.Input<String>? region;

  /// Creates a new [GetRegionBackendServiceIamPolicyArgs].
  /// [name] Used to find the parent resource to bind the IAM policy to
  /// [project] The ID of the project in which the resource belongs.
  /// [region] The Region in which the created backend service should reside.
  GetRegionBackendServiceIamPolicyArgs({
    required String name,
    String? project,
    String? region,
  }) :
      name = pulumi.Input.asInput<String>(name),
      project = pulumi.Input.asOptionalInput<String>(project),
      region = pulumi.Input.asOptionalInput<String>(region);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'project': ?project,
      'region': ?region,
    };
  }

  factory GetRegionBackendServiceIamPolicyArgs.fromMap(Map<String, dynamic> map) {
    return GetRegionBackendServiceIamPolicyArgs(
      name: map['name'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      region: map['region'] == null ? null : map['region'] as String,
    );
  }
}

