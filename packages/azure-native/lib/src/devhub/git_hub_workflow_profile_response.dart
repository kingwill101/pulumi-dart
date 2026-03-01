// ignore_for_file: unused_element, unnecessary_cast

import 'acrresponse.dart';
import 'deployment_properties_response.dart';
import 'git_hub_workflow_profile_response_oidc_credentials.dart';
import 'workflow_run_response.dart';

/// GitHub Workflow Profile
class GitHubWorkflowProfileResponse {
  /// Information on the azure container registry
  final ACRResponse? acr;
  /// The Azure Kubernetes Cluster Resource the application will be deployed to.
  final String? aksResourceId;
  /// Determines the authorization status of requests.
  final String authStatus;
  /// Repository Branch Name
  final String? branchName;
  final DeploymentPropertiesResponse? deploymentProperties;
  /// Path to Dockerfile Build Context within the repository.
  final String? dockerBuildContext;
  /// Path to the Dockerfile within the repository.
  final String? dockerfile;
  final WorkflowRunResponse? lastWorkflowRun;
  /// Kubernetes namespace the application is deployed to.
  final String? namespace;
  /// The fields needed for OIDC with GitHub.
  final GitHubWorkflowProfileResponseOidcCredentials? oidcCredentials;
  /// The status of the Pull Request submitted against the users repository.
  final String prStatus;
  /// The URL to the Pull Request submitted against the users repository.
  final String prURL;
  /// The number associated with the submitted pull request.
  final int pullNumber;
  /// Repository Name
  final String? repositoryName;
  /// Repository Owner
  final String? repositoryOwner;

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
      'acr': ?acr == null ? null : acr!.toMap(),
      'aksResourceId': ?aksResourceId,
      'authStatus': authStatus,
      'branchName': ?branchName,
      'deploymentProperties': ?deploymentProperties == null ? null : deploymentProperties!.toMap(),
      'dockerBuildContext': ?dockerBuildContext,
      'dockerfile': ?dockerfile,
      'lastWorkflowRun': ?lastWorkflowRun == null ? null : lastWorkflowRun!.toMap(),
      'namespace': ?namespace,
      'oidcCredentials': ?oidcCredentials == null ? null : oidcCredentials!.toMap(),
      'prStatus': prStatus,
      'prURL': prURL,
      'pullNumber': pullNumber,
      'repositoryName': ?repositoryName,
      'repositoryOwner': ?repositoryOwner,
    };
  }

  factory GitHubWorkflowProfileResponse.fromMap(Map<String, dynamic> map) {
    return GitHubWorkflowProfileResponse(
      acr: map['acr'] == null ? null : ACRResponse.fromMap((map['acr'] as Map).cast<String, dynamic>()),
      aksResourceId: map['aksResourceId'] == null ? null : map['aksResourceId'] as String,
      authStatus: map['authStatus'] as String,
      branchName: map['branchName'] == null ? null : map['branchName'] as String,
      deploymentProperties: map['deploymentProperties'] == null ? null : DeploymentPropertiesResponse.fromMap((map['deploymentProperties'] as Map).cast<String, dynamic>()),
      dockerBuildContext: map['dockerBuildContext'] == null ? null : map['dockerBuildContext'] as String,
      dockerfile: map['dockerfile'] == null ? null : map['dockerfile'] as String,
      lastWorkflowRun: map['lastWorkflowRun'] == null ? null : WorkflowRunResponse.fromMap((map['lastWorkflowRun'] as Map).cast<String, dynamic>()),
      namespace: map['namespace'] == null ? null : map['namespace'] as String,
      oidcCredentials: map['oidcCredentials'] == null ? null : GitHubWorkflowProfileResponseOidcCredentials.fromMap((map['oidcCredentials'] as Map).cast<String, dynamic>()),
      prStatus: map['prStatus'] as String,
      prURL: map['prURL'] as String,
      pullNumber: map['pullNumber'] as int,
      repositoryName: map['repositoryName'] == null ? null : map['repositoryName'] as String,
      repositoryOwner: map['repositoryOwner'] == null ? null : map['repositoryOwner'] as String,
    );
  }
}

