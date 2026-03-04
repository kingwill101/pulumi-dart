// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'acrresponse.dart';
import 'deployment_properties_response.dart';
import 'git_hub_workflow_profile_response_oidc_credentials.dart';
import 'workflow_run_response.dart';

/// GitHub Workflow Profile
class GitHubWorkflowProfileResponse {
  /// Information on the azure container registry
  final pulumi.Input<ACRResponse>? acr;

  /// The Azure Kubernetes Cluster Resource the application will be deployed to.
  final pulumi.Input<String>? aksResourceId;

  /// Determines the authorization status of requests.
  final pulumi.Input<String> authStatus;

  /// Repository Branch Name
  final pulumi.Input<String>? branchName;
  final pulumi.Input<DeploymentPropertiesResponse>? deploymentProperties;

  /// Path to Dockerfile Build Context within the repository.
  final pulumi.Input<String>? dockerBuildContext;

  /// Path to the Dockerfile within the repository.
  final pulumi.Input<String>? dockerfile;
  final pulumi.Input<WorkflowRunResponse>? lastWorkflowRun;

  /// Kubernetes namespace the application is deployed to.
  final pulumi.Input<String>? namespace;

  /// The fields needed for OIDC with GitHub.
  final pulumi.Input<GitHubWorkflowProfileResponseOidcCredentials>?
  oidcCredentials;

  /// The status of the Pull Request submitted against the users repository.
  final pulumi.Input<String> prStatus;

  /// The URL to the Pull Request submitted against the users repository.
  final pulumi.Input<String> prURL;

  /// The number associated with the submitted pull request.
  final pulumi.Input<int> pullNumber;

  /// Repository Name
  final pulumi.Input<String>? repositoryName;

  /// Repository Owner
  final pulumi.Input<String>? repositoryOwner;

  /// Creates a new [GitHubWorkflowProfileResponse].
  /// [acr] Information on the azure container registry
  /// [aksResourceId] The Azure Kubernetes Cluster Resource the application will be deployed to.
  /// [authStatus] Determines the authorization status of requests.
  /// [branchName] Repository Branch Name
  /// [deploymentProperties] Optional.
  /// [dockerBuildContext] Path to Dockerfile Build Context within the repository.
  /// [dockerfile] Path to the Dockerfile within the repository.
  /// [lastWorkflowRun] Optional.
  /// [namespace] Kubernetes namespace the application is deployed to.
  /// [oidcCredentials] The fields needed for OIDC with GitHub.
  /// [prStatus] The status of the Pull Request submitted against the users repository.
  /// [prURL] The URL to the Pull Request submitted against the users repository.
  /// [pullNumber] The number associated with the submitted pull request.
  /// [repositoryName] Repository Name
  /// [repositoryOwner] Repository Owner
  GitHubWorkflowProfileResponse({
    this.acr,
    this.aksResourceId,
    required this.authStatus,
    this.branchName,
    this.deploymentProperties,
    this.dockerBuildContext,
    this.dockerfile,
    this.lastWorkflowRun,
    this.namespace,
    this.oidcCredentials,
    required this.prStatus,
    required this.prURL,
    required this.pullNumber,
    this.repositoryName,
    this.repositoryOwner,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'acr':
          ?pulumi.Input.mapOptionalInputValue<
            ACRResponse,
            Map<String, dynamic>
          >(acr, (value) => value.toMap()),
      'aksResourceId': ?aksResourceId,
      'authStatus': authStatus,
      'branchName': ?branchName,
      'deploymentProperties':
          ?pulumi.Input.mapOptionalInputValue<
            DeploymentPropertiesResponse,
            Map<String, dynamic>
          >(deploymentProperties, (value) => value.toMap()),
      'dockerBuildContext': ?dockerBuildContext,
      'dockerfile': ?dockerfile,
      'lastWorkflowRun':
          ?pulumi.Input.mapOptionalInputValue<
            WorkflowRunResponse,
            Map<String, dynamic>
          >(lastWorkflowRun, (value) => value.toMap()),
      'namespace': ?namespace,
      'oidcCredentials':
          ?pulumi.Input.mapOptionalInputValue<
            GitHubWorkflowProfileResponseOidcCredentials,
            Map<String, dynamic>
          >(oidcCredentials, (value) => value.toMap()),
      'prStatus': prStatus,
      'prURL': prURL,
      'pullNumber': pullNumber,
      'repositoryName': ?repositoryName,
      'repositoryOwner': ?repositoryOwner,
    };
  }

  factory GitHubWorkflowProfileResponse.fromMap(Map<String, dynamic> map) {
    return GitHubWorkflowProfileResponse(
      acr: (() {
        final guardedValue = map['acr'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          ACRResponse.fromMap((guardedValue as Map).cast<String, dynamic>()),
        );
      })(),
      aksResourceId: (() {
        final guardedValue = map['aksResourceId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      authStatus: pulumi.Input.fromValue(map['authStatus'] as String),
      branchName: (() {
        final guardedValue = map['branchName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      deploymentProperties: (() {
        final guardedValue = map['deploymentProperties'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          DeploymentPropertiesResponse.fromMap(
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
          WorkflowRunResponse.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
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
          GitHubWorkflowProfileResponseOidcCredentials.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      prStatus: pulumi.Input.fromValue(map['prStatus'] as String),
      prURL: pulumi.Input.fromValue(map['prURL'] as String),
      pullNumber: pulumi.Input.fromValue(map['pullNumber'] as int),
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
