// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_sourcerepo_v1_get_repo_iam_policy_args_doc}
/// Arguments for getRepoIamPolicy.
/// {@endtemplate}
/// {@macro pulumi_sourcerepo_v1_get_repo_iam_policy_args_doc}
class GetRepoIamPolicyArgs {
  final pulumi.Input<int>? optionsRequestedPolicyVersion;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> repoId;

  /// Creates a new [GetRepoIamPolicyArgs].
  /// [optionsRequestedPolicyVersion] Optional.
  /// [project] Optional.
  /// [repoId] Required.
  GetRepoIamPolicyArgs({
    int? optionsRequestedPolicyVersion,
    String? project,
    required String repoId,
  }) : optionsRequestedPolicyVersion = pulumi.Input.asOptionalInput<int>(
         optionsRequestedPolicyVersion,
       ),
       project = pulumi.Input.asOptionalInput<String>(project),
       repoId = pulumi.Input.asInput<String>(repoId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'optionsRequestedPolicyVersion': ?optionsRequestedPolicyVersion,
      'project': ?project,
      'repoId': repoId,
    };
  }

  factory GetRepoIamPolicyArgs.fromMap(Map<String, dynamic> map) {
    return GetRepoIamPolicyArgs(
      optionsRequestedPolicyVersion:
          map['optionsRequestedPolicyVersion'] == null
          ? null
          : map['optionsRequestedPolicyVersion'] as int,
      project: map['project'] == null ? null : map['project'] as String,
      repoId: map['repoId'] as String,
    );
  }
}
