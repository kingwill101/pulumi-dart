// ignore_for_file: unused_element, unnecessary_cast

/// Settings of integration with GitHub.
class GoogleCloudDialogflowCxV3beta1AgentGitIntegrationSettingsGithubSettingsResponse {
  /// The access token used to authenticate the access to the GitHub repository.
  final String accessToken;

  /// A list of branches configured to be used from Dialogflow.
  final List<String> branches;

  /// The unique repository display name for the GitHub repository.
  final String displayName;

  /// The GitHub repository URI related to the agent.
  final String repositoryUri;

  /// The branch of the GitHub repository tracked for this agent.
  final String trackingBranch;

  /// Creates a new [GoogleCloudDialogflowCxV3beta1AgentGitIntegrationSettingsGithubSettingsResponse].
  /// [accessToken] The access token used to authenticate the access to the GitHub repository.
  /// [branches] A list of branches configured to be used from Dialogflow.
  /// [displayName] The unique repository display name for the GitHub repository.
  /// [repositoryUri] The GitHub repository URI related to the agent.
  /// [trackingBranch] The branch of the GitHub repository tracked for this agent.
  GoogleCloudDialogflowCxV3beta1AgentGitIntegrationSettingsGithubSettingsResponse({
    required this.accessToken,
    required this.branches,
    required this.displayName,
    required this.repositoryUri,
    required this.trackingBranch,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessToken': accessToken,
      'branches': branches,
      'displayName': displayName,
      'repositoryUri': repositoryUri,
      'trackingBranch': trackingBranch,
    };
  }

  factory GoogleCloudDialogflowCxV3beta1AgentGitIntegrationSettingsGithubSettingsResponse.fromMap(
    Map<String, dynamic> map,
  ) {
    return GoogleCloudDialogflowCxV3beta1AgentGitIntegrationSettingsGithubSettingsResponse(
      accessToken: map['accessToken'] as String,
      branches: (map['branches'] as List).cast<String>(),
      displayName: map['displayName'] as String,
      repositoryUri: map['repositoryUri'] as String,
      trackingBranch: map['trackingBranch'] as String,
    );
  }
}
