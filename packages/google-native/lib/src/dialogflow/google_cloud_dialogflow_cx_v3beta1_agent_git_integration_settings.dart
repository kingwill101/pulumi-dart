// ignore_for_file: unused_element, unnecessary_cast

import 'google_cloud_dialogflow_cx_v3beta1_agent_git_integration_settings_github_settings.dart';

/// Settings for connecting to Git repository for an agent.
class GoogleCloudDialogflowCxV3beta1AgentGitIntegrationSettings {
  /// GitHub settings.
  final GoogleCloudDialogflowCxV3beta1AgentGitIntegrationSettingsGithubSettings? githubSettings;

  /// Creates a new [GoogleCloudDialogflowCxV3beta1AgentGitIntegrationSettings].
  /// [githubSettings] GitHub settings.
  GoogleCloudDialogflowCxV3beta1AgentGitIntegrationSettings({
    this.githubSettings,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'githubSettings': ?githubSettings == null ? null : githubSettings!.toMap(),
    };
  }

  factory GoogleCloudDialogflowCxV3beta1AgentGitIntegrationSettings.fromMap(Map<String, dynamic> map) {
    return GoogleCloudDialogflowCxV3beta1AgentGitIntegrationSettings(
      githubSettings: map['githubSettings'] == null ? null : GoogleCloudDialogflowCxV3beta1AgentGitIntegrationSettingsGithubSettings.fromMap((map['githubSettings'] as Map).cast<String, dynamic>()),
    );
  }
}

