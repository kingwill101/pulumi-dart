// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'agentcore_oauth2_credential_provider_oauth2_provider_config_custom_oauth2_provider_config.dart';
import 'agentcore_oauth2_credential_provider_oauth2_provider_config_github_oauth2_provider_config.dart';
import 'agentcore_oauth2_credential_provider_oauth2_provider_config_google_oauth2_provider_config.dart';
import 'agentcore_oauth2_credential_provider_oauth2_provider_config_microsoft_oauth2_provider_config.dart';
import 'agentcore_oauth2_credential_provider_oauth2_provider_config_salesforce_oauth2_provider_config.dart';
import 'agentcore_oauth2_credential_provider_oauth2_provider_config_slack_oauth2_provider_config.dart';

class AgentcoreOauth2CredentialProviderOauth2ProviderConfig {
  /// Custom OAuth2 provider configuration. See `custom` below.
  final pulumi.Input<AgentcoreOauth2CredentialProviderOauth2ProviderConfigCustomOauth2ProviderConfig>? customOauth2ProviderConfig;
  /// GitHub OAuth provider configuration. See `github` below.
  final pulumi.Input<AgentcoreOauth2CredentialProviderOauth2ProviderConfigGithubOauth2ProviderConfig>? githubOauth2ProviderConfig;
  /// Google OAuth provider configuration. See `google` below.
  final pulumi.Input<AgentcoreOauth2CredentialProviderOauth2ProviderConfigGoogleOauth2ProviderConfig>? googleOauth2ProviderConfig;
  /// Microsoft OAuth provider configuration. See `microsoft` below.
  final pulumi.Input<AgentcoreOauth2CredentialProviderOauth2ProviderConfigMicrosoftOauth2ProviderConfig>? microsoftOauth2ProviderConfig;
  /// Salesforce OAuth provider configuration. See `salesforce` below.
  final pulumi.Input<AgentcoreOauth2CredentialProviderOauth2ProviderConfigSalesforceOauth2ProviderConfig>? salesforceOauth2ProviderConfig;
  /// Slack OAuth provider configuration. See `slack` below.
  final pulumi.Input<AgentcoreOauth2CredentialProviderOauth2ProviderConfigSlackOauth2ProviderConfig>? slackOauth2ProviderConfig;

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
      'customOauth2ProviderConfig': ?pulumi.Input.mapOptionalInputValue<AgentcoreOauth2CredentialProviderOauth2ProviderConfigCustomOauth2ProviderConfig, Map<String, dynamic>>(customOauth2ProviderConfig, (value) => value.toMap()),
      'githubOauth2ProviderConfig': ?pulumi.Input.mapOptionalInputValue<AgentcoreOauth2CredentialProviderOauth2ProviderConfigGithubOauth2ProviderConfig, Map<String, dynamic>>(githubOauth2ProviderConfig, (value) => value.toMap()),
      'googleOauth2ProviderConfig': ?pulumi.Input.mapOptionalInputValue<AgentcoreOauth2CredentialProviderOauth2ProviderConfigGoogleOauth2ProviderConfig, Map<String, dynamic>>(googleOauth2ProviderConfig, (value) => value.toMap()),
      'microsoftOauth2ProviderConfig': ?pulumi.Input.mapOptionalInputValue<AgentcoreOauth2CredentialProviderOauth2ProviderConfigMicrosoftOauth2ProviderConfig, Map<String, dynamic>>(microsoftOauth2ProviderConfig, (value) => value.toMap()),
      'salesforceOauth2ProviderConfig': ?pulumi.Input.mapOptionalInputValue<AgentcoreOauth2CredentialProviderOauth2ProviderConfigSalesforceOauth2ProviderConfig, Map<String, dynamic>>(salesforceOauth2ProviderConfig, (value) => value.toMap()),
      'slackOauth2ProviderConfig': ?pulumi.Input.mapOptionalInputValue<AgentcoreOauth2CredentialProviderOauth2ProviderConfigSlackOauth2ProviderConfig, Map<String, dynamic>>(slackOauth2ProviderConfig, (value) => value.toMap()),
    };
  }

  factory AgentcoreOauth2CredentialProviderOauth2ProviderConfig.fromMap(Map<String, dynamic> map) {
    return AgentcoreOauth2CredentialProviderOauth2ProviderConfig(
      customOauth2ProviderConfig: map['customOauth2ProviderConfig'] == null ? null : ((AgentcoreOauth2CredentialProviderOauth2ProviderConfigCustomOauth2ProviderConfig.fromMap((map['customOauth2ProviderConfig']! as Map).cast<String, dynamic>())).input()).input(),
      githubOauth2ProviderConfig: map['githubOauth2ProviderConfig'] == null ? null : ((AgentcoreOauth2CredentialProviderOauth2ProviderConfigGithubOauth2ProviderConfig.fromMap((map['githubOauth2ProviderConfig']! as Map).cast<String, dynamic>())).input()).input(),
      googleOauth2ProviderConfig: map['googleOauth2ProviderConfig'] == null ? null : ((AgentcoreOauth2CredentialProviderOauth2ProviderConfigGoogleOauth2ProviderConfig.fromMap((map['googleOauth2ProviderConfig']! as Map).cast<String, dynamic>())).input()).input(),
      microsoftOauth2ProviderConfig: map['microsoftOauth2ProviderConfig'] == null ? null : ((AgentcoreOauth2CredentialProviderOauth2ProviderConfigMicrosoftOauth2ProviderConfig.fromMap((map['microsoftOauth2ProviderConfig']! as Map).cast<String, dynamic>())).input()).input(),
      salesforceOauth2ProviderConfig: map['salesforceOauth2ProviderConfig'] == null ? null : ((AgentcoreOauth2CredentialProviderOauth2ProviderConfigSalesforceOauth2ProviderConfig.fromMap((map['salesforceOauth2ProviderConfig']! as Map).cast<String, dynamic>())).input()).input(),
      slackOauth2ProviderConfig: map['slackOauth2ProviderConfig'] == null ? null : ((AgentcoreOauth2CredentialProviderOauth2ProviderConfigSlackOauth2ProviderConfig.fromMap((map['slackOauth2ProviderConfig']! as Map).cast<String, dynamic>())).input()).input(),
    );
  }
}

