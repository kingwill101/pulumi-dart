// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_dataform_v1beta1_get_repository_workspace_iam_policy_args_doc}
/// Arguments for getRepositoryWorkspaceIamPolicy.
/// {@endtemplate}
/// {@macro pulumi_dataform_v1beta1_get_repository_workspace_iam_policy_args_doc}
class GetRepositoryWorkspaceIamPolicyArgs {
  final pulumi.Input<String> location;
  final pulumi.Input<int>? optionsRequestedPolicyVersion;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> repositoryId;
  final pulumi.Input<String> workspaceId;

  /// Creates a new [GetRepositoryWorkspaceIamPolicyArgs].
  /// [location] Required.
  /// [optionsRequestedPolicyVersion] Optional.
  /// [project] Optional.
  /// [repositoryId] Required.
  /// [workspaceId] Required.
  GetRepositoryWorkspaceIamPolicyArgs({
    required String location,
    int? optionsRequestedPolicyVersion,
    String? project,
    required String repositoryId,
    required String workspaceId,
  }) : location = pulumi.Input.asInput<String>(location),
       optionsRequestedPolicyVersion = pulumi.Input.asOptionalInput<int>(
         optionsRequestedPolicyVersion,
       ),
       project = pulumi.Input.asOptionalInput<String>(project),
       repositoryId = pulumi.Input.asInput<String>(repositoryId),
       workspaceId = pulumi.Input.asInput<String>(workspaceId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': location,
      'optionsRequestedPolicyVersion': ?optionsRequestedPolicyVersion,
      'project': ?project,
      'repositoryId': repositoryId,
      'workspaceId': workspaceId,
    };
  }

  factory GetRepositoryWorkspaceIamPolicyArgs.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetRepositoryWorkspaceIamPolicyArgs(
      location: map['location'] as String,
      optionsRequestedPolicyVersion:
          map['optionsRequestedPolicyVersion'] == null
          ? null
          : map['optionsRequestedPolicyVersion'] as int,
      project: map['project'] == null ? null : map['project'] as String,
      repositoryId: map['repositoryId'] as String,
      workspaceId: map['workspaceId'] as String,
    );
  }
}
