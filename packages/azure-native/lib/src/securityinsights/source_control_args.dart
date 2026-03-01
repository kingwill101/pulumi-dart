// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'deployment_info.dart';
import 'repository.dart';
import 'repository_resource_info.dart';

/// {@template pulumi_securityinsights_source_control_args_doc}
/// The set of arguments for SourceControl.
/// {@endtemplate}
/// {@macro pulumi_securityinsights_source_control_args_doc}
class SourceControlArgs {
  /// Array of source control content types.
  final pulumi.Input<List<String>> contentTypes;
  /// A description of the source control
  final pulumi.Input<String>? description;
  /// The display name of the source control
  final pulumi.Input<String> displayName;
  /// The id (a Guid) of the source control
  final pulumi.Input<String>? id;
  /// Information regarding the latest deployment for the source control.
  final pulumi.Input<DeploymentInfo>? lastDeploymentInfo;
  /// The repository type of the source control
  final pulumi.Input<String> repoType;
  /// Repository metadata.
  final pulumi.Input<Repository> repository;
  /// Information regarding the resources created in user's repository.
  final pulumi.Input<RepositoryResourceInfo>? repositoryResourceInfo;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Source control Id
  final pulumi.Input<String>? sourceControlId;
  /// The version number associated with the source control
  final pulumi.Input<String>? version;
  /// The name of the workspace.
  final pulumi.Input<String> workspaceName;

  /// Creates a new [SourceControlArgs].
  /// [contentTypes] Array of source control content types.
  /// [description] A description of the source control
  /// [displayName] The display name of the source control
  /// [id] The id (a Guid) of the source control
  /// [lastDeploymentInfo] Information regarding the latest deployment for the source control.
  /// [repoType] The repository type of the source control
  /// [repository] Repository metadata.
  /// [repositoryResourceInfo] Information regarding the resources created in user's repository.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [sourceControlId] Source control Id
  /// [version] The version number associated with the source control
  /// [workspaceName] The name of the workspace.
  SourceControlArgs({
    required List<String> contentTypes,
    String? description,
    required String displayName,
    String? id,
    DeploymentInfo? lastDeploymentInfo,
    required String repoType,
    required Repository repository,
    RepositoryResourceInfo? repositoryResourceInfo,
    required String resourceGroupName,
    String? sourceControlId,
    String? version,
    required String workspaceName,
  }) :
      contentTypes = pulumi.Input.asInput<List<String>>(contentTypes),
      description = pulumi.Input.asOptionalInput<String>(description),
      displayName = pulumi.Input.asInput<String>(displayName),
      id = pulumi.Input.asOptionalInput<String>(id),
      lastDeploymentInfo = pulumi.Input.asOptionalInput<DeploymentInfo>(lastDeploymentInfo),
      repoType = pulumi.Input.asInput<String>(repoType),
      repository = pulumi.Input.asInput<Repository>(repository),
      repositoryResourceInfo = pulumi.Input.asOptionalInput<RepositoryResourceInfo>(repositoryResourceInfo),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      sourceControlId = pulumi.Input.asOptionalInput<String>(sourceControlId),
      version = pulumi.Input.asOptionalInput<String>(version),
      workspaceName = pulumi.Input.asInput<String>(workspaceName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'contentTypes': contentTypes,
      'description': ?description,
      'displayName': displayName,
      'id': ?id,
      'lastDeploymentInfo': ?pulumi.Input.mapOptionalInputValue<DeploymentInfo, Map<String, dynamic>>(lastDeploymentInfo, (value) => value.toMap()),
      'repoType': repoType,
      'repository': pulumi.Input.mapInputValue<Repository, Map<String, dynamic>>(repository, (value) => value.toMap()),
      'repositoryResourceInfo': ?pulumi.Input.mapOptionalInputValue<RepositoryResourceInfo, Map<String, dynamic>>(repositoryResourceInfo, (value) => value.toMap()),
      'resourceGroupName': resourceGroupName,
      'sourceControlId': ?sourceControlId,
      'version': ?version,
      'workspaceName': workspaceName,
    };
  }

  factory SourceControlArgs.fromMap(Map<String, dynamic> map) {
    return SourceControlArgs(
      contentTypes: (map['contentTypes'] as List).cast<String>(),
      description: map['description'] == null ? null : map['description'] as String,
      displayName: map['displayName'] as String,
      id: map['id'] == null ? null : map['id'] as String,
      lastDeploymentInfo: map['lastDeploymentInfo'] == null ? null : DeploymentInfo.fromMap((map['lastDeploymentInfo'] as Map).cast<String, dynamic>()),
      repoType: map['repoType'] as String,
      repository: Repository.fromMap((map['repository'] as Map).cast<String, dynamic>()),
      repositoryResourceInfo: map['repositoryResourceInfo'] == null ? null : RepositoryResourceInfo.fromMap((map['repositoryResourceInfo'] as Map).cast<String, dynamic>()),
      resourceGroupName: map['resourceGroupName'] as String,
      sourceControlId: map['sourceControlId'] == null ? null : map['sourceControlId'] as String,
      version: map['version'] == null ? null : map['version'] as String,
      workspaceName: map['workspaceName'] as String,
    );
  }
}

