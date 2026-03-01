// ignore_for_file: unused_element, unnecessary_cast

import 'agentcore_oauth2_credential_provider_oauth2_provider_config_custom_oauth2_provider_config.dart';
import 'agentcore_oauth2_credential_provider_oauth2_provider_config_github_oauth2_provider_config.dart';
import 'agentcore_oauth2_credential_provider_oauth2_provider_config_google_oauth2_provider_config.dart';
import 'agentcore_oauth2_credential_provider_oauth2_provider_config_microsoft_oauth2_provider_config.dart';
import 'agentcore_oauth2_credential_provider_oauth2_provider_config_salesforce_oauth2_provider_config.dart';
import 'agentcore_oauth2_credential_provider_oauth2_provider_config_slack_oauth2_provider_config.dart';

class AgentcoreOauth2CredentialProviderOauth2ProviderConfig {
  /// Custom OAuth2 provider configuration. See `custom` below.
  final AgentcoreOauth2CredentialProviderOauth2ProviderConfigCustomOauth2ProviderConfig? customOauth2ProviderConfig;
  /// GitHub OAuth provider configuration. See `github` below.
  final AgentcoreOauth2CredentialProviderOauth2ProviderConfigGithubOauth2ProviderConfig? githubOauth2ProviderConfig;
  /// Google OAuth provider configuration. See `google` below.
  final AgentcoreOauth2CredentialProviderOauth2ProviderConfigGoogleOauth2ProviderConfig? googleOauth2ProviderConfig;
  /// Microsoft OAuth provider configuration. See `microsoft` below.
  final AgentcoreOauth2CredentialProviderOauth2ProviderConfigMicrosoftOauth2ProviderConfig? microsoftOauth2ProviderConfig;
  /// Salesforce OAuth provider configuration. See `salesforce` below.
  final AgentcoreOauth2CredentialProviderOauth2ProviderConfigSalesforceOauth2ProviderConfig? salesforceOauth2ProviderConfig;
  /// Slack OAuth provider configuration. See `slack` below.
  final AgentcoreOauth2CredentialProviderOauth2ProviderConfigSlackOauth2ProviderConfig? slackOauth2ProviderConfig;

  /// Creates a new [AgentcoreOauth2CredentialProviderOauth2ProviderConfig].
  /// [customOauth2ProviderConfig] Custom OAuth2 provider configuration. See `custom` below.
  /// [githubOauth2ProviderConfig] GitHub OAuth provider configuration. See `github` below.
  /// [googleOauth2ProviderConfig] Google OAuth provider configuration. See `google` below.
  /// [microsoftOauth2ProviderConfig] Microsoft OAuth provider configuration. See `microsoft` below.
  /// [salesforceOauth2ProviderConfig] Salesforce OAuth provider configuration. See `salesforce` below.
  /// [slackOauth2ProviderConfig] Slack OAuth provider configuration. See `slack` below.
  AgentcoreOauth2CredentialProviderOauth2ProviderConfig({
    this.customOauth2ProviderConfig,
    this.githubOauth2ProviderConfig,
    this.googleOauth2ProviderConfig,
    this.microsoftOauth2ProviderConfig,
    this.salesforceOauth2ProviderConfig,
    this.slackOauth2ProviderConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'customOauth2ProviderConfig': ?customOauth2ProviderConfig == null ? null : customOauth2ProviderConfig!.toMap(),
      'githubOauth2ProviderConfig': ?githubOauth2ProviderConfig == null ? null : githubOauth2ProviderConfig!.toMap(),
      'googleOauth2ProviderConfig': ?googleOauth2ProviderConfig == null ? null : googleOauth2ProviderConfig!.toMap(),
      'microsoftOauth2ProviderConfig': ?microsoftOauth2ProviderConfig == null ? null : microsoftOauth2ProviderConfig!.toMap(),
      'salesforceOauth2ProviderConfig': ?salesforceOauth2ProviderConfig == null ? null : salesforceOauth2ProviderConfig!.toMap(),
      'slackOauth2ProviderConfig': ?slackOauth2ProviderConfig == null ? null : slackOauth2ProviderConfig!.toMap(),
    };
  }

  factory AgentcoreOauth2CredentialProviderOauth2ProviderConfig.fromMap(Map<String, dynamic> map) {
    return AgentcoreOauth2CredentialProviderOauth2ProviderConfig(
      customOauth2ProviderConfig: map['customOauth2ProviderConfig'] == null ? null : AgentcoreOauth2CredentialProviderOauth2ProviderConfigCustomOauth2ProviderConfig.fromMap((map['customOauth2ProviderConfig'] as Map).cast<String, dynamic>()),
      githubOauth2ProviderConfig: map['githubOauth2ProviderConfig'] == null ? null : AgentcoreOauth2CredentialProviderOauth2ProviderConfigGithubOauth2ProviderConfig.fromMap((map['githubOauth2ProviderConfig'] as Map).cast<String, dynamic>()),
      googleOauth2ProviderConfig: map['googleOauth2ProviderConfig'] == null ? null : AgentcoreOauth2CredentialProviderOauth2ProviderConfigGoogleOauth2ProviderConfig.fromMap((map['googleOauth2ProviderConfig'] as Map).cast<String, dynamic>()),
      microsoftOauth2ProviderConfig: map['microsoftOauth2ProviderConfig'] == null ? null : AgentcoreOauth2CredentialProviderOauth2ProviderConfigMicrosoftOauth2ProviderConfig.fromMap((map['microsoftOauth2ProviderConfig'] as Map).cast<String, dynamic>()),
      salesforceOauth2ProviderConfig: map['salesforceOauth2ProviderConfig'] == null ? null : AgentcoreOauth2CredentialProviderOauth2ProviderConfigSalesforceOauth2ProviderConfig.fromMap((map['salesforceOauth2ProviderConfig'] as Map).cast<String, dynamic>()),
      slackOauth2ProviderConfig: map['slackOauth2ProviderConfig'] == null ? null : AgentcoreOauth2CredentialProviderOauth2ProviderConfigSlackOauth2ProviderConfig.fromMap((map['slackOauth2ProviderConfig'] as Map).cast<String, dynamic>()),
    );
  }
}

