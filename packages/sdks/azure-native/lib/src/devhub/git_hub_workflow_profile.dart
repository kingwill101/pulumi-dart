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
      'acr': ?pulumi.Input.mapOptionalInputValue<ACR, Map<String, dynamic>>(
        acr,
        (value) => value.toMap(),
      ),
      'aksResourceId': ?aksResourceId,
      'branchName': ?branchName,
      'deploymentProperties':
          ?pulumi.Input.mapOptionalInputValue<
            DeploymentProperties,
            Map<String, dynamic>
          >(deploymentProperties, (value) => value.toMap()),
      'dockerBuildContext': ?dockerBuildContext,
      'dockerfile': ?dockerfile,
      'lastWorkflowRun':
          ?pulumi.Input.mapOptionalInputValue<
            WorkflowRun,
            Map<String, dynamic>
          >(lastWorkflowRun, (value) => value.toMap()),
      'namespace': ?namespace,
      'oidcCredentials':
          ?pulumi.Input.mapOptionalInputValue<
            GitHubWorkflowProfileOidcCredentials,
            Map<String, dynamic>
          >(oidcCredentials, (value) => value.toMap()),
      'repositoryName': ?repositoryName,
      'repositoryOwner': ?repositoryOwner,
    };
  }

  factory GitHubWorkflowProfile.fromMap(Map<String, dynamic> map) {
    return GitHubWorkflowProfile(
      acr: (() {
        final guardedValue = map['acr'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          ACR.fromMap((guardedValue as Map).cast<String, dynamic>()),
        );
      })(),
      aksResourceId: (() {
        final guardedValue = map['aksResourceId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      branchName: (() {
        final guardedValue = map['branchName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      deploymentProperties: (() {
        final guardedValue = map['deploymentProperties'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          DeploymentProperties.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      dockerBuildContext: (() {
        final guardedValue = map['dockerBuildContext'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      dockerfile: (() {
        final guardedValue = map['dockerfile'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      lastWorkflowRun: (() {
        final guardedValue = map['lastWorkflowRun'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          WorkflowRun.fromMap((guardedValue as Map).cast<String, dynamic>()),
        );
      })(),
      namespace: (() {
        final guardedValue = map['namespace'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      oidcCredentials: (() {
        final guardedValue = map['oidcCredentials'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          GitHubWorkflowProfileOidcCredentials.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      repositoryName: (() {
        final guardedValue = map['repositoryName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      repositoryOwner: (() {
        final guardedValue = map['repositoryOwner'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
