// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_dataform_repository_iam_policy_repository_iam_policy_args_doc}
/// The set of arguments for RepositoryIamPolicy.
/// {@endtemplate}
/// {@macro pulumi_dataform_repository_iam_policy_repository_iam_policy_args_doc}
class RepositoryIamPolicyArgs {
  final pulumi.Input<String> policyData;
  final pulumi.Input<String>? project;
  final pulumi.Input<String>? region;
  final pulumi.Input<String> repository;

  /// Creates a new [RepositoryIamPolicyArgs].
  /// [policyData] Required.
  /// [project] Optional.
  /// [region] Optional.
  /// [repository] Required.
  RepositoryIamPolicyArgs({
    required String policyData,
    String? project,
    String? region,
    required String repository,
  })  : policyData = pulumi.Input.asInput<String>(policyData),
        project = pulumi.Input.asOptionalInput<String>(project),
        region = pulumi.Input.asOptionalInput<String>(region),
        repository = pulumi.Input.asInput<String>(repository);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['policyData'] = policyData;
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

  factory RepositoryIamPolicyArgs.fromMap(Map<String, dynamic> map) {
    return RepositoryIamPolicyArgs(
      policyData: map['policyData'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      region: map['region'] == null ? null : map['region'] as String,
      repository: map['repository'] as String,
    );
  }
}
