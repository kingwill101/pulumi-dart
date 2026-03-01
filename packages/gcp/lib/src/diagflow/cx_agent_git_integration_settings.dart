// ignore_for_file: unused_element, unnecessary_cast

import 'cx_agent_git_integration_settings_github_settings.dart';

class CxAgentGitIntegrationSettings {
  /// Settings of integration with GitHub.
  /// Structure is documented below.
  final CxAgentGitIntegrationSettingsGithubSettings? githubSettings;

  /// Creates a new [CxAgentGitIntegrationSettings].
  /// [githubSettings] Settings of integration with GitHub.
  CxAgentGitIntegrationSettings({this.githubSettings});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'githubSettings': ?githubSettings == null
          ? null
          : githubSettings!.toMap(),
    };
  }

  factory CxAgentGitIntegrationSettings.fromMap(Map<String, dynamic> map) {
    return CxAgentGitIntegrationSettings(
      githubSettings: map['githubSettings'] == null
          ? null
          : CxAgentGitIntegrationSettingsGithubSettings.fromMap(
              (map['githubSettings'] as Map).cast<String, dynamic>(),
            ),
    );
  }
}
