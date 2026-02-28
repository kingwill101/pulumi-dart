// ignore_for_file: unused_element, unnecessary_cast

/// Settings of integration with GitHub.
class GoogleCloudDialogflowCxV3beta1AgentGitIntegrationSettingsGithubSettings {
  /// The access token used to authenticate the access to the GitHub repository.
  final String? accessToken;

  /// A list of branches configured to be used from Dialogflow.
  final List<String>? branches;

  /// The unique repository display name for the GitHub repository.
  final String? displayName;

  /// The GitHub repository URI related to the agent.
  final String? repositoryUri;

  /// The branch of the GitHub repository tracked for this agent.
  final String? trackingBranch;

  /// Creates a new [GoogleCloudDialogflowCxV3beta1AgentGitIntegrationSettingsGithubSettings].
  /// [accessToken] The access token used to authenticate the access to the GitHub repository.
  /// [branches] A list of branches configured to be used from Dialogflow.
  /// [displayName] The unique repository display name for the GitHub repository.
  /// [repositoryUri] The GitHub repository URI related to the agent.
  /// [trackingBranch] The branch of the GitHub repository tracked for this agent.
  GoogleCloudDialogflowCxV3beta1AgentGitIntegrationSettingsGithubSettings({
    this.accessToken,
    this.branches,
    this.displayName,
    this.repositoryUri,
    this.trackingBranch,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final accessTokenValue = accessToken;
    if (accessTokenValue != null) {
      map['accessToken'] = accessTokenValue;
    }
    final branchesValue = branches;
    if (branchesValue != null) {
      map['branches'] = branchesValue;
    }
    final displayNameValue = displayName;
    if (displayNameValue != null) {
      map['displayName'] = displayNameValue;
    }
    final repositoryUriValue = repositoryUri;
    if (repositoryUriValue != null) {
      map['repositoryUri'] = repositoryUriValue;
    }
    final trackingBranchValue = trackingBranch;
    if (trackingBranchValue != null) {
      map['trackingBranch'] = trackingBranchValue;
    }
    return map;
  }

  factory GoogleCloudDialogflowCxV3beta1AgentGitIntegrationSettingsGithubSettings.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudDialogflowCxV3beta1AgentGitIntegrationSettingsGithubSettings(
      accessToken:
          map['accessToken'] == null ? null : map['accessToken'] as String,
      branches: map['branches'] == null
          ? null
          : (map['branches'] as List).cast<String>(),
      displayName:
          map['displayName'] == null ? null : map['displayName'] as String,
      repositoryUri:
          map['repositoryUri'] == null ? null : map['repositoryUri'] as String,
      trackingBranch: map['trackingBranch'] == null
          ? null
          : map['trackingBranch'] as String,
    );
  }
}
