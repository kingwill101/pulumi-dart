// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'acr.dart';
import 'deployment_properties.dart';
import 'git_hub_workflow_profile_oidc_credentials.dart';
import 'workflow_run.dart';

/// GitHub Workflow Profile
class GitHubWorkflowProfile {
  /// Information on the azure container registry
  final pulumi.Input<ACR>? acr;
  /// The Azure Kubernetes Cluster Resource the application will be deployed to.
  final pulumi.Input<String>? aksResourceId;
  /// Repository Branch Name
  final pulumi.Input<String>? branchName;
  final pulumi.Input<DeploymentProperties>? deploymentProperties;
  /// Path to Dockerfile Build Context within the repository.
  final pulumi.Input<String>? dockerBuildContext;
  /// Path to the Dockerfile within the repository.
  final pulumi.Input<String>? dockerfile;
  final pulumi.Input<WorkflowRun>? lastWorkflowRun;
  /// Kubernetes namespace the application is deployed to.
  final pulumi.Input<String>? namespace;
  /// The fields needed for OIDC with GitHub.
  final pulumi.Input<GitHubWorkflowProfileOidcCredentials>? oidcCredentials;
  /// Repository Name
  final pulumi.Input<String>? repositoryName;
  /// Repository Owner
  final pulumi.Input<String>? repositoryOwner;

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
      'acr': ?pulumi.Input.mapOptionalInputValue<ACR, Map<String, dynamic>>(acr, (value) => value.toMap()),
      'aksResourceId': ?aksResourceId,
      'branchName': ?branchName,
      'deploymentProperties': ?pulumi.Input.mapOptionalInputValue<DeploymentProperties, Map<String, dynamic>>(deploymentProperties, (value) => value.toMap()),
      'dockerBuildContext': ?dockerBuildContext,
      'dockerfile': ?dockerfile,
      'lastWorkflowRun': ?pulumi.Input.mapOptionalInputValue<WorkflowRun, Map<String, dynamic>>(lastWorkflowRun, (value) => value.toMap()),
      'namespace': ?namespace,
      'oidcCredentials': ?pulumi.Input.mapOptionalInputValue<GitHubWorkflowProfileOidcCredentials, Map<String, dynamic>>(oidcCredentials, (value) => value.toMap()),
      'repositoryName': ?repositoryName,
      'repositoryOwner': ?repositoryOwner,
    };
  }

  factory GitHubWorkflowProfile.fromMap(Map<String, dynamic> map) {
    return GitHubWorkflowProfile(
      acr: map['acr'] == null ? null : (ACR.fromMap((map['acr']! as Map).cast<String, dynamic>())).input(),
      aksResourceId: map['aksResourceId'] == null ? null : (map['aksResourceId']! as String).input(),
      branchName: map['branchName'] == null ? null : (map['branchName']! as String).input(),
      deploymentProperties: map['deploymentProperties'] == null ? null : (DeploymentProperties.fromMap((map['deploymentProperties']! as Map).cast<String, dynamic>())).input(),
      dockerBuildContext: map['dockerBuildContext'] == null ? null : (map['dockerBuildContext']! as String).input(),
      dockerfile: map['dockerfile'] == null ? null : (map['dockerfile']! as String).input(),
      lastWorkflowRun: map['lastWorkflowRun'] == null ? null : (WorkflowRun.fromMap((map['lastWorkflowRun']! as Map).cast<String, dynamic>())).input(),
      namespace: map['namespace'] == null ? null : (map['namespace']! as String).input(),
      oidcCredentials: map['oidcCredentials'] == null ? null : (GitHubWorkflowProfileOidcCredentials.fromMap((map['oidcCredentials']! as Map).cast<String, dynamic>())).input(),
      repositoryName: map['repositoryName'] == null ? null : (map['repositoryName']! as String).input(),
      repositoryOwner: map['repositoryOwner'] == null ? null : (map['repositoryOwner']! as String).input(),
    );
  }
}

