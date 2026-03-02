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
  final pulumi.Input<GitHubWorkflowProfileResponseOidcCredentials>? oidcCredentials;
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
      'acr': ?pulumi.Input.mapOptionalInputValue<ACRResponse, Map<String, dynamic>>(acr, (value) => value.toMap()),
      'aksResourceId': ?aksResourceId,
      'authStatus': authStatus,
      'branchName': ?branchName,
      'deploymentProperties': ?pulumi.Input.mapOptionalInputValue<DeploymentPropertiesResponse, Map<String, dynamic>>(deploymentProperties, (value) => value.toMap()),
      'dockerBuildContext': ?dockerBuildContext,
      'dockerfile': ?dockerfile,
      'lastWorkflowRun': ?pulumi.Input.mapOptionalInputValue<WorkflowRunResponse, Map<String, dynamic>>(lastWorkflowRun, (value) => value.toMap()),
      'namespace': ?namespace,
      'oidcCredentials': ?pulumi.Input.mapOptionalInputValue<GitHubWorkflowProfileResponseOidcCredentials, Map<String, dynamic>>(oidcCredentials, (value) => value.toMap()),
      'prStatus': prStatus,
      'prURL': prURL,
      'pullNumber': pullNumber,
      'repositoryName': ?repositoryName,
      'repositoryOwner': ?repositoryOwner,
    };
  }

  factory GitHubWorkflowProfileResponse.fromMap(Map<String, dynamic> map) {
    return GitHubWorkflowProfileResponse(
      acr: map['acr'] == null ? null : (ACRResponse.fromMap((map['acr']! as Map).cast<String, dynamic>())).input(),
      aksResourceId: map['aksResourceId'] == null ? null : (map['aksResourceId']! as String).input(),
      authStatus: (map['authStatus'] as String).input(),
      branchName: map['branchName'] == null ? null : (map['branchName']! as String).input(),
      deploymentProperties: map['deploymentProperties'] == null ? null : (DeploymentPropertiesResponse.fromMap((map['deploymentProperties']! as Map).cast<String, dynamic>())).input(),
      dockerBuildContext: map['dockerBuildContext'] == null ? null : (map['dockerBuildContext']! as String).input(),
      dockerfile: map['dockerfile'] == null ? null : (map['dockerfile']! as String).input(),
      lastWorkflowRun: map['lastWorkflowRun'] == null ? null : (WorkflowRunResponse.fromMap((map['lastWorkflowRun']! as Map).cast<String, dynamic>())).input(),
      namespace: map['namespace'] == null ? null : (map['namespace']! as String).input(),
      oidcCredentials: map['oidcCredentials'] == null ? null : (GitHubWorkflowProfileResponseOidcCredentials.fromMap((map['oidcCredentials']! as Map).cast<String, dynamic>())).input(),
      prStatus: (map['prStatus'] as String).input(),
      prURL: (map['prURL'] as String).input(),
      pullNumber: (map['pullNumber'] as int).input(),
      repositoryName: map['repositoryName'] == null ? null : (map['repositoryName']! as String).input(),
      repositoryOwner: map['repositoryOwner'] == null ? null : (map['repositoryOwner']! as String).input(),
    );
  }
}

