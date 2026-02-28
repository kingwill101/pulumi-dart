// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_gemini_get_repository_group_iam_policy_get_repository_group_iam_policy_args_doc}
/// Arguments for getRepositoryGroupIamPolicy.
/// {@endtemplate}
/// {@macro pulumi_gemini_get_repository_group_iam_policy_get_repository_group_iam_policy_args_doc}
class GetRepositoryGroupIamPolicyArgs {
  /// Required. Id of the Code Repository Index. Used to find the parent resource to bind the IAM policy to
  final pulumi.Input<String> codeRepositoryIndex;

  /// The location of the Code Repository Index, for example `us-central1`. Used to find the parent resource to bind the IAM policy to. If not specified,
  /// the value will be parsed from the identifier of the parent resource. If no location is provided in the parent identifier and no
  /// location is specified, it is taken from the provider configuration.
  final pulumi.Input<String>? location;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the project will be parsed from the identifier of the parent resource. If no project is provided in the parent identifier and no project is specified, the provider project is used.
  final pulumi.Input<String>? project;

  /// Used to find the parent resource to bind the IAM policy to
  final pulumi.Input<String> repositoryGroupId;

  /// Creates a new [GetRepositoryGroupIamPolicyArgs].
  /// [codeRepositoryIndex] Required. Id of the Code Repository Index. Used to find the parent resource to bind the IAM policy to
  /// [location] The location of the Code Repository Index, for example `us-central1`. Used to find the parent resource to bind the IAM policy to. If not specified,
  /// [project] The ID of the project in which the resource belongs.
  /// [repositoryGroupId] Used to find the parent resource to bind the IAM policy to
  GetRepositoryGroupIamPolicyArgs({
    required String codeRepositoryIndex,
    String? location,
    String? project,
    required String repositoryGroupId,
  })  : codeRepositoryIndex = pulumi.Input.asInput<String>(codeRepositoryIndex),
        location = pulumi.Input.asOptionalInput<String>(location),
        project = pulumi.Input.asOptionalInput<String>(project),
        repositoryGroupId = pulumi.Input.asInput<String>(repositoryGroupId);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['codeRepositoryIndex'] = codeRepositoryIndex;
    final locationValue = location;
    if (locationValue != null) {
      map['location'] = locationValue;
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['repositoryGroupId'] = repositoryGroupId;
    return map;
  }

  factory GetRepositoryGroupIamPolicyArgs.fromMap(Map<String, dynamic> map) {
    return GetRepositoryGroupIamPolicyArgs(
      codeRepositoryIndex: map['codeRepositoryIndex'] as String,
      location: map['location'] == null ? null : map['location'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      repositoryGroupId: map['repositoryGroupId'] as String,
    );
  }
}
