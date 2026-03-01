// ignore_for_file: unused_element, unnecessary_cast

import 'acr.dart';
import 'deployment_properties.dart';
import 'git_hub_workflow_profile_oidc_credentials.dart';
import 'workflow_run.dart';

/// GitHub Workflow Profile
class GitHubWorkflowProfile {
  /// Information on the azure container registry
  final ACR? acr;
  /// The Azure Kubernetes Cluster Resource the application will be deployed to.
  final String? aksResourceId;
  /// Repository Branch Name
  final String? branchName;
  final DeploymentProperties? deploymentProperties;
  /// Path to Dockerfile Build Context within the repository.
  final String? dockerBuildContext;
  /// Path to the Dockerfile within the repository.
  final String? dockerfile;
  final WorkflowRun? lastWorkflowRun;
  /// Kubernetes namespace the application is deployed to.
  final String? namespace;
  /// The fields needed for OIDC with GitHub.
  final GitHubWorkflowProfileOidcCredentials? oidcCredentials;
  /// Repository Name
  final String? repositoryName;
  /// Repository Owner
  final String? repositoryOwner;

  /// Creates a new [GitHubWorkflowProfile].
  /// [acr] Information on the azure container registry
  /// [aksResourceId] The Azure Kubernetes Cluster Resource the application will be deployed to.
  /// [branchName] Repository Branch Name
  /// [deploymentProperties] Optional.
  /// [dockerBuildContext] Path to Dockerfile Build Context within the repository.
  /// [dockerfile] Path to the Dockerfile within the repository.
  /// [lastWorkflowRun] Optional.
  /// [namespace] Kubernetes namespace the application is deployed to.
  /// [oidcCredentials] The fields needed for OIDC with GitHub.
  /// [repositoryName] Repository Name
  /// [repositoryOwner] Repository Owner
  GitHubWorkflowProfile({
    this.acr,
    this.aksResourceId,
    this.branchName,
    this.deploymentProperties,
    this.dockerBuildContext,
    this.dockerfile,
    this.lastWorkflowRun,
    this.namespace,
    this.oidcCredentials,
    this.repositoryName,
    this.repositoryOwner,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'acr': ?acr == null ? null : acr!.toMap(),
      'aksResourceId': ?aksResourceId,
      'branchName': ?branchName,
      'deploymentProperties': ?deploymentProperties == null ? null : deploymentProperties!.toMap(),
      'dockerBuildContext': ?dockerBuildContext,
      'dockerfile': ?dockerfile,
      'lastWorkflowRun': ?lastWorkflowRun == null ? null : lastWorkflowRun!.toMap(),
      'namespace': ?namespace,
      'oidcCredentials': ?oidcCredentials == null ? null : oidcCredentials!.toMap(),
      'repositoryName': ?repositoryName,
      'repositoryOwner': ?repositoryOwner,
    };
  }

  factory GitHubWorkflowProfile.fromMap(Map<String, dynamic> map) {
    return GitHubWorkflowProfile(
      acr: map['acr'] == null ? null : ACR.fromMap((map['acr'] as Map).cast<String, dynamic>()),
      aksResourceId: map['aksResourceId'] == null ? null : map['aksResourceId'] as String,
      branchName: map['branchName'] == null ? null : map['branchName'] as String,
      deploymentProperties: map['deploymentProperties'] == null ? null : DeploymentProperties.fromMap((map['deploymentProperties'] as Map).cast<String, dynamic>()),
      dockerBuildContext: map['dockerBuildContext'] == null ? null : map['dockerBuildContext'] as String,
      dockerfile: map['dockerfile'] == null ? null : map['dockerfile'] as String,
      lastWorkflowRun: map['lastWorkflowRun'] == null ? null : WorkflowRun.fromMap((map['lastWorkflowRun'] as Map).cast<String, dynamic>()),
      namespace: map['namespace'] == null ? null : map['namespace'] as String,
      oidcCredentials: map['oidcCredentials'] == null ? null : GitHubWorkflowProfileOidcCredentials.fromMap((map['oidcCredentials'] as Map).cast<String, dynamic>()),
      repositoryName: map['repositoryName'] == null ? null : map['repositoryName'] as String,
      repositoryOwner: map['repositoryOwner'] == null ? null : map['repositoryOwner'] as String,
    );
  }
}

