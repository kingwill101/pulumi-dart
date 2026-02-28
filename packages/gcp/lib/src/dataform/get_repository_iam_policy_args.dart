// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_dataform_get_repository_iam_policy_get_repository_iam_policy_args_doc}
/// Arguments for getRepositoryIamPolicy.
/// {@endtemplate}
/// {@macro pulumi_dataform_get_repository_iam_policy_get_repository_iam_policy_args_doc}
class GetRepositoryIamPolicyArgs {
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the project will be parsed from the identifier of the parent resource. If no project is provided in the parent identifier and no project is specified, the provider project is used.
  final pulumi.Input<String>? project;

  /// A reference to the region Used to find the parent resource to bind the IAM policy to. If not specified,
  /// the value will be parsed from the identifier of the parent resource. If no region is provided in the parent identifier and no
  /// region is specified, it is taken from the provider configuration.
  final pulumi.Input<String>? region;

  /// Used to find the parent resource to bind the IAM policy to
  final pulumi.Input<String> repository;

  /// Creates a new [GetRepositoryIamPolicyArgs].
  /// [project] The ID of the project in which the resource belongs.
  /// [region] A reference to the region Used to find the parent resource to bind the IAM policy to. If not specified,
  /// [repository] Used to find the parent resource to bind the IAM policy to
  GetRepositoryIamPolicyArgs({
    String? project,
    String? region,
    required String repository,
  })  : project = pulumi.Input.asOptionalInput<String>(project),
        region = pulumi.Input.asOptionalInput<String>(region),
        repository = pulumi.Input.asInput<String>(repository);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    map['repository'] = repository;
    return map;
  }

  factory GetRepositoryIamPolicyArgs.fromMap(Map<String, dynamic> map) {
    return GetRepositoryIamPolicyArgs(
      project: map['project'] == null ? null : map['project'] as String,
      region: map['region'] == null ? null : map['region'] as String,
      repository: map['repository'] as String,
    );
  }
}
