// ignore_for_file: unused_element, unnecessary_cast

import '../agentcore_oauth2_credential_provider_oauth2_provider_config_custom_oauth2_provider_config/agentcore_oauth2_credential_provider_oauth2_provider_config_custom_oauth2_provider_config.dart';
import '../agentcore_oauth2_credential_provider_oauth2_provider_config_github_oauth2_provider_config/agentcore_oauth2_credential_provider_oauth2_provider_config_github_oauth2_provider_config.dart';
import '../agentcore_oauth2_credential_provider_oauth2_provider_config_google_oauth2_provider_config/agentcore_oauth2_credential_provider_oauth2_provider_config_google_oauth2_provider_config.dart';
import '../agentcore_oauth2_credential_provider_oauth2_provider_config_microsoft_oauth2_provider_config/agentcore_oauth2_credential_provider_oauth2_provider_config_microsoft_oauth2_provider_config.dart';
import '../agentcore_oauth2_credential_provider_oauth2_provider_config_salesforce_oauth2_provider_config/agentcore_oauth2_credential_provider_oauth2_provider_config_salesforce_oauth2_provider_config.dart';
import '../agentcore_oauth2_credential_provider_oauth2_provider_config_slack_oauth2_provider_config/agentcore_oauth2_credential_provider_oauth2_provider_config_slack_oauth2_provider_config.dart';

class AgentcoreOauth2CredentialProviderOauth2ProviderConfig {
  /// Custom OAuth2 provider configuration. See <span pulumi-lang-nodejs="`custom`" pulumi-lang-dotnet="`Custom`" pulumi-lang-go="`custom`" pulumi-lang-python="`custom`" pulumi-lang-yaml="`custom`" pulumi-lang-java="`custom`">`custom`</span> below.
  final AgentcoreOauth2CredentialProviderOauth2ProviderConfigCustomOauth2ProviderConfig?
      customOauth2ProviderConfig;

  /// GitHub OAuth provider configuration. See <span pulumi-lang-nodejs="`github`" pulumi-lang-dotnet="`Github`" pulumi-lang-go="`github`" pulumi-lang-python="`github`" pulumi-lang-yaml="`github`" pulumi-lang-java="`github`">`github`</span> below.
  final AgentcoreOauth2CredentialProviderOauth2ProviderConfigGithubOauth2ProviderConfig?
      githubOauth2ProviderConfig;

  /// Google OAuth provider configuration. See <span pulumi-lang-nodejs="`google`" pulumi-lang-dotnet="`Google`" pulumi-lang-go="`google`" pulumi-lang-python="`google`" pulumi-lang-yaml="`google`" pulumi-lang-java="`google`">`google`</span> below.
  final AgentcoreOauth2CredentialProviderOauth2ProviderConfigGoogleOauth2ProviderConfig?
      googleOauth2ProviderConfig;

  /// Microsoft OAuth provider configuration. See <span pulumi-lang-nodejs="`microsoft`" pulumi-lang-dotnet="`Microsoft`" pulumi-lang-go="`microsoft`" pulumi-lang-python="`microsoft`" pulumi-lang-yaml="`microsoft`" pulumi-lang-java="`microsoft`">`microsoft`</span> below.
  final AgentcoreOauth2CredentialProviderOauth2ProviderConfigMicrosoftOauth2ProviderConfig?
      microsoftOauth2ProviderConfig;

  /// Salesforce OAuth provider configuration. See <span pulumi-lang-nodejs="`salesforce`" pulumi-lang-dotnet="`Salesforce`" pulumi-lang-go="`salesforce`" pulumi-lang-python="`salesforce`" pulumi-lang-yaml="`salesforce`" pulumi-lang-java="`salesforce`">`salesforce`</span> below.
  final AgentcoreOauth2CredentialProviderOauth2ProviderConfigSalesforceOauth2ProviderConfig?
      salesforceOauth2ProviderConfig;

  /// Slack OAuth provider configuration. See <span pulumi-lang-nodejs="`slack`" pulumi-lang-dotnet="`Slack`" pulumi-lang-go="`slack`" pulumi-lang-python="`slack`" pulumi-lang-yaml="`slack`" pulumi-lang-java="`slack`">`slack`</span> below.
  final AgentcoreOauth2CredentialProviderOauth2ProviderConfigSlackOauth2ProviderConfig?
      slackOauth2ProviderConfig;

  AgentcoreOauth2CredentialProviderOauth2ProviderConfig({
    this.customOauth2ProviderConfig,
    this.githubOauth2ProviderConfig,
    this.googleOauth2ProviderConfig,
    this.microsoftOauth2ProviderConfig,
    this.salesforceOauth2ProviderConfig,
    this.slackOauth2ProviderConfig,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final customOauth2ProviderConfigValue = customOauth2ProviderConfig;
    if (customOauth2ProviderConfigValue != null) {
      map['customOauth2ProviderConfig'] =
          customOauth2ProviderConfigValue.toMap();
    }
    final githubOauth2ProviderConfigValue = githubOauth2ProviderConfig;
    if (githubOauth2ProviderConfigValue != null) {
      map['githubOauth2ProviderConfig'] =
          githubOauth2ProviderConfigValue.toMap();
    }
    final googleOauth2ProviderConfigValue = googleOauth2ProviderConfig;
    if (googleOauth2ProviderConfigValue != null) {
      map['googleOauth2ProviderConfig'] =
          googleOauth2ProviderConfigValue.toMap();
    }
    final microsoftOauth2ProviderConfigValue = microsoftOauth2ProviderConfig;
    if (microsoftOauth2ProviderConfigValue != null) {
      map['microsoftOauth2ProviderConfig'] =
          microsoftOauth2ProviderConfigValue.toMap();
    }
    final salesforceOauth2ProviderConfigValue = salesforceOauth2ProviderConfig;
    if (salesforceOauth2ProviderConfigValue != null) {
      map['salesforceOauth2ProviderConfig'] =
          salesforceOauth2ProviderConfigValue.toMap();
    }
    final slackOauth2ProviderConfigValue = slackOauth2ProviderConfig;
    if (slackOauth2ProviderConfigValue != null) {
      map['slackOauth2ProviderConfig'] = slackOauth2ProviderConfigValue.toMap();
    }
    return map;
  }

  factory AgentcoreOauth2CredentialProviderOauth2ProviderConfig.fromMap(
      Map<String, dynamic> map) {
    return AgentcoreOauth2CredentialProviderOauth2ProviderConfig(
      customOauth2ProviderConfig: map['customOauth2ProviderConfig'] == null
          ? null
          : AgentcoreOauth2CredentialProviderOauth2ProviderConfigCustomOauth2ProviderConfig
              .fromMap((map['customOauth2ProviderConfig'] as Map)
                  .cast<String, dynamic>()),
      githubOauth2ProviderConfig: map['githubOauth2ProviderConfig'] == null
          ? null
          : AgentcoreOauth2CredentialProviderOauth2ProviderConfigGithubOauth2ProviderConfig
              .fromMap((map['githubOauth2ProviderConfig'] as Map)
                  .cast<String, dynamic>()),
      googleOauth2ProviderConfig: map['googleOauth2ProviderConfig'] == null
          ? null
          : AgentcoreOauth2CredentialProviderOauth2ProviderConfigGoogleOauth2ProviderConfig
              .fromMap((map['googleOauth2ProviderConfig'] as Map)
                  .cast<String, dynamic>()),
      microsoftOauth2ProviderConfig: map['microsoftOauth2ProviderConfig'] ==
              null
          ? null
          : AgentcoreOauth2CredentialProviderOauth2ProviderConfigMicrosoftOauth2ProviderConfig
              .fromMap((map['microsoftOauth2ProviderConfig'] as Map)
                  .cast<String, dynamic>()),
      salesforceOauth2ProviderConfig: map['salesforceOauth2ProviderConfig'] ==
              null
          ? null
          : AgentcoreOauth2CredentialProviderOauth2ProviderConfigSalesforceOauth2ProviderConfig
              .fromMap((map['salesforceOauth2ProviderConfig'] as Map)
                  .cast<String, dynamic>()),
      slackOauth2ProviderConfig: map['slackOauth2ProviderConfig'] == null
          ? null
          : AgentcoreOauth2CredentialProviderOauth2ProviderConfigSlackOauth2ProviderConfig
              .fromMap((map['slackOauth2ProviderConfig'] as Map)
                  .cast<String, dynamic>()),
    );
  }
}
