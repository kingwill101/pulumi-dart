// ignore_for_file: unused_element, unnecessary_cast

import 'google_cloud_dialogflow_cx_v3_agent_git_integration_settings_github_settings_response.dart';

/// Settings for connecting to Git repository for an agent.
class GoogleCloudDialogflowCxV3AgentGitIntegrationSettingsResponse {
  /// GitHub settings.
  final GoogleCloudDialogflowCxV3AgentGitIntegrationSettingsGithubSettingsResponse githubSettings;

  /// Creates a new [GoogleCloudDialogflowCxV3AgentGitIntegrationSettingsResponse].
  /// [githubSettings] GitHub settings.
  GoogleCloudDialogflowCxV3AgentGitIntegrationSettingsResponse({
    required this.githubSettings,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'githubSettings': githubSettings.toMap(),
    };
  }

  factory GoogleCloudDialogflowCxV3AgentGitIntegrationSettingsResponse.fromMap(Map<String, dynamic> map) {
    return GoogleCloudDialogflowCxV3AgentGitIntegrationSettingsResponse(
      githubSettings: GoogleCloudDialogflowCxV3AgentGitIntegrationSettingsGithubSettingsResponse.fromMap((map['githubSettings'] as Map).cast<String, dynamic>()),
    );
  }
}

