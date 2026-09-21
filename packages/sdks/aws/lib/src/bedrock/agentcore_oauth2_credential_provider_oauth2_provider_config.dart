// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'agentcore_oauth2_credential_provider_oauth2_provider_config_atlassian_oauth2_provider_config.dart';
import 'agentcore_oauth2_credential_provider_oauth2_provider_config_custom_oauth2_provider_config.dart';
import 'agentcore_oauth2_credential_provider_oauth2_provider_config_github_oauth2_provider_config.dart';
import 'agentcore_oauth2_credential_provider_oauth2_provider_config_google_oauth2_provider_config.dart';
import 'agentcore_oauth2_credential_provider_oauth2_provider_config_included_oauth2_provider_config.dart';
import 'agentcore_oauth2_credential_provider_oauth2_provider_config_linkedin_oauth2_provider_config.dart';
import 'agentcore_oauth2_credential_provider_oauth2_provider_config_microsoft_oauth2_provider_config.dart';
import 'agentcore_oauth2_credential_provider_oauth2_provider_config_salesforce_oauth2_provider_config.dart';
import 'agentcore_oauth2_credential_provider_oauth2_provider_config_slack_oauth2_provider_config.dart';

class AgentcoreOauth2CredentialProviderOauth2ProviderConfig {
  /// Atlassian OAuth provider configuration. See `predefined providers` below.
  final pulumi.Input<AgentcoreOauth2CredentialProviderOauth2ProviderConfigAtlassianOauth2ProviderConfig?>? atlassianOauth2ProviderConfig;
  /// Custom OAuth2 provider configuration. See `custom` below.
  final pulumi.Input<AgentcoreOauth2CredentialProviderOauth2ProviderConfigCustomOauth2ProviderConfig?>? customOauth2ProviderConfig;
  /// GitHub OAuth provider configuration. See `predefined providers` below.
  final pulumi.Input<AgentcoreOauth2CredentialProviderOauth2ProviderConfigGithubOauth2ProviderConfig?>? githubOauth2ProviderConfig;
  /// Google OAuth provider configuration. See `predefined providers` below.
  final pulumi.Input<AgentcoreOauth2CredentialProviderOauth2ProviderConfigGoogleOauth2ProviderConfig?>? googleOauth2ProviderConfig;
  /// Configuration for an included (vendor-supported) OAuth2 provider, used for the additional supported vendors. See `predefined providers` below.
  ///
  /// &gt; **Note:** `includedOauth2ProviderConfig` currently supports only vendors that have fixed, AWS-known OAuth2 endpoints (for example `XOauth2`, `FacebookOauth2`, `SpotifyOauth2`), which require nothing beyond `clientId` and `clientSecret`. Isolated-tenant vendors such as `OktaOauth2`, `PingOneOauth2`, and `OneLoginOauth2` require provider-specific endpoints (`issuer`, `authorizationEndpoint`, `tokenEndpoint`) that are not yet exposed by this resource, and will fail at create time with a `Missing TokenEndpoint` error. Support for those fields is planned in a follow-up.
  final pulumi.Input<AgentcoreOauth2CredentialProviderOauth2ProviderConfigIncludedOauth2ProviderConfig?>? includedOauth2ProviderConfig;
  /// LinkedIn OAuth provider configuration. See `predefined providers` below.
  final pulumi.Input<AgentcoreOauth2CredentialProviderOauth2ProviderConfigLinkedinOauth2ProviderConfig?>? linkedinOauth2ProviderConfig;
  /// Microsoft OAuth provider configuration. See `predefined providers` below.
  final pulumi.Input<AgentcoreOauth2CredentialProviderOauth2ProviderConfigMicrosoftOauth2ProviderConfig?>? microsoftOauth2ProviderConfig;
  /// Salesforce OAuth provider configuration. See `predefined providers` below.
  final pulumi.Input<AgentcoreOauth2CredentialProviderOauth2ProviderConfigSalesforceOauth2ProviderConfig?>? salesforceOauth2ProviderConfig;
  /// Slack OAuth provider configuration. See `predefined providers` below.
  final pulumi.Input<AgentcoreOauth2CredentialProviderOauth2ProviderConfigSlackOauth2ProviderConfig?>? slackOauth2ProviderConfig;

  /// Creates a new [AgentcoreOauth2CredentialProviderOauth2ProviderConfig].
  /// [atlassianOauth2ProviderConfig] Atlassian OAuth provider configuration. See `predefined providers` below.
  /// [customOauth2ProviderConfig] Custom OAuth2 provider configuration. See `custom` below.
  /// [githubOauth2ProviderConfig] GitHub OAuth provider configuration. See `predefined providers` below.
  /// [googleOauth2ProviderConfig] Google OAuth provider configuration. See `predefined providers` below.
  /// [includedOauth2ProviderConfig] Configuration for an included (vendor-supported) OAuth2 provider, used for the additional supported vendors. See `predefined providers` below.
  /// [linkedinOauth2ProviderConfig] LinkedIn OAuth provider configuration. See `predefined providers` below.
  /// [microsoftOauth2ProviderConfig] Microsoft OAuth provider configuration. See `predefined providers` below.
  /// [salesforceOauth2ProviderConfig] Salesforce OAuth provider configuration. See `predefined providers` below.
  /// [slackOauth2ProviderConfig] Slack OAuth provider configuration. See `predefined providers` below.
  const AgentcoreOauth2CredentialProviderOauth2ProviderConfig({
    this.atlassianOauth2ProviderConfig,
    this.customOauth2ProviderConfig,
    this.githubOauth2ProviderConfig,
    this.googleOauth2ProviderConfig,
    this.includedOauth2ProviderConfig,
    this.linkedinOauth2ProviderConfig,
    this.microsoftOauth2ProviderConfig,
    this.salesforceOauth2ProviderConfig,
    this.slackOauth2ProviderConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'atlassianOauth2ProviderConfig': ?pulumi.Input.mapOptionalInputValue<AgentcoreOauth2CredentialProviderOauth2ProviderConfigAtlassianOauth2ProviderConfig, Map<String, dynamic>>(atlassianOauth2ProviderConfig, (value) => value.toMap()),
      'customOauth2ProviderConfig': ?pulumi.Input.mapOptionalInputValue<AgentcoreOauth2CredentialProviderOauth2ProviderConfigCustomOauth2ProviderConfig, Map<String, dynamic>>(customOauth2ProviderConfig, (value) => value.toMap()),
      'githubOauth2ProviderConfig': ?pulumi.Input.mapOptionalInputValue<AgentcoreOauth2CredentialProviderOauth2ProviderConfigGithubOauth2ProviderConfig, Map<String, dynamic>>(githubOauth2ProviderConfig, (value) => value.toMap()),
      'googleOauth2ProviderConfig': ?pulumi.Input.mapOptionalInputValue<AgentcoreOauth2CredentialProviderOauth2ProviderConfigGoogleOauth2ProviderConfig, Map<String, dynamic>>(googleOauth2ProviderConfig, (value) => value.toMap()),
      'includedOauth2ProviderConfig': ?pulumi.Input.mapOptionalInputValue<AgentcoreOauth2CredentialProviderOauth2ProviderConfigIncludedOauth2ProviderConfig, Map<String, dynamic>>(includedOauth2ProviderConfig, (value) => value.toMap()),
      'linkedinOauth2ProviderConfig': ?pulumi.Input.mapOptionalInputValue<AgentcoreOauth2CredentialProviderOauth2ProviderConfigLinkedinOauth2ProviderConfig, Map<String, dynamic>>(linkedinOauth2ProviderConfig, (value) => value.toMap()),
      'microsoftOauth2ProviderConfig': ?pulumi.Input.mapOptionalInputValue<AgentcoreOauth2CredentialProviderOauth2ProviderConfigMicrosoftOauth2ProviderConfig, Map<String, dynamic>>(microsoftOauth2ProviderConfig, (value) => value.toMap()),
      'salesforceOauth2ProviderConfig': ?pulumi.Input.mapOptionalInputValue<AgentcoreOauth2CredentialProviderOauth2ProviderConfigSalesforceOauth2ProviderConfig, Map<String, dynamic>>(salesforceOauth2ProviderConfig, (value) => value.toMap()),
      'slackOauth2ProviderConfig': ?pulumi.Input.mapOptionalInputValue<AgentcoreOauth2CredentialProviderOauth2ProviderConfigSlackOauth2ProviderConfig, Map<String, dynamic>>(slackOauth2ProviderConfig, (value) => value.toMap()),
    };
  }

  factory AgentcoreOauth2CredentialProviderOauth2ProviderConfig.fromMap(Map<String, dynamic> map) {
    return AgentcoreOauth2CredentialProviderOauth2ProviderConfig(
      atlassianOauth2ProviderConfig: (() { final guardedValue = map['atlassianOauth2ProviderConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AgentcoreOauth2CredentialProviderOauth2ProviderConfigAtlassianOauth2ProviderConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      customOauth2ProviderConfig: (() { final guardedValue = map['customOauth2ProviderConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AgentcoreOauth2CredentialProviderOauth2ProviderConfigCustomOauth2ProviderConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      githubOauth2ProviderConfig: (() { final guardedValue = map['githubOauth2ProviderConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AgentcoreOauth2CredentialProviderOauth2ProviderConfigGithubOauth2ProviderConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      googleOauth2ProviderConfig: (() { final guardedValue = map['googleOauth2ProviderConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AgentcoreOauth2CredentialProviderOauth2ProviderConfigGoogleOauth2ProviderConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      includedOauth2ProviderConfig: (() { final guardedValue = map['includedOauth2ProviderConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AgentcoreOauth2CredentialProviderOauth2ProviderConfigIncludedOauth2ProviderConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      linkedinOauth2ProviderConfig: (() { final guardedValue = map['linkedinOauth2ProviderConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AgentcoreOauth2CredentialProviderOauth2ProviderConfigLinkedinOauth2ProviderConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      microsoftOauth2ProviderConfig: (() { final guardedValue = map['microsoftOauth2ProviderConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AgentcoreOauth2CredentialProviderOauth2ProviderConfigMicrosoftOauth2ProviderConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      salesforceOauth2ProviderConfig: (() { final guardedValue = map['salesforceOauth2ProviderConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AgentcoreOauth2CredentialProviderOauth2ProviderConfigSalesforceOauth2ProviderConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      slackOauth2ProviderConfig: (() { final guardedValue = map['slackOauth2ProviderConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AgentcoreOauth2CredentialProviderOauth2ProviderConfigSlackOauth2ProviderConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
