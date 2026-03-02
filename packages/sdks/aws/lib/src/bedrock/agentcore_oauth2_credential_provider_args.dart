// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'agentcore_oauth2_credential_provider_oauth2_provider_config.dart';

/// {@template pulumi_bedrock_agentcore_oauth2_credential_provider_agentcore_oauth2_credential_provider_args_doc}
/// The set of arguments for AgentcoreOauth2CredentialProvider.
/// {@endtemplate}
/// {@macro pulumi_bedrock_agentcore_oauth2_credential_provider_agentcore_oauth2_credential_provider_args_doc}
class AgentcoreOauth2CredentialProviderArgs {
  /// Vendor of the OAuth2 credential provider. Valid values: `CustomOauth2`, `GithubOauth2`, `GoogleOauth2`, `Microsoft`, `SalesforceOauth2`, `SlackOauth2`.
  final pulumi.Input<String> credentialProviderVendor;
  /// Name of the OAuth2 credential provider.
  final pulumi.Input<String>? name;
  /// OAuth2 provider configuration. Must contain exactly one provider type. See `oauth2_provider_config` below.
  ///
  /// The following arguments are optional:
  final pulumi.Input<AgentcoreOauth2CredentialProviderOauth2ProviderConfig>? oauth2ProviderConfig;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Creates a new [AgentcoreOauth2CredentialProviderArgs].
  /// [credentialProviderVendor] Vendor of the OAuth2 credential provider. Valid values: `CustomOauth2`, `GithubOauth2`, `GoogleOauth2`, `Microsoft`, `SalesforceOauth2`, `SlackOauth2`.
  /// [name] Name of the OAuth2 credential provider.
  /// [oauth2ProviderConfig] OAuth2 provider configuration. Must contain exactly one provider type. See `oauth2_provider_config` below.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  AgentcoreOauth2CredentialProviderArgs({
    required this.credentialProviderVendor,
    this.name,
    this.oauth2ProviderConfig,
    this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'credentialProviderVendor': credentialProviderVendor,
      'name': ?name,
      'oauth2ProviderConfig': ?pulumi.Input.mapOptionalInputValue<AgentcoreOauth2CredentialProviderOauth2ProviderConfig, Map<String, dynamic>>(oauth2ProviderConfig, (value) => value.toMap()),
      'region': ?region,
    };
  }

  factory AgentcoreOauth2CredentialProviderArgs.fromMap(Map<String, dynamic> map) {
    return AgentcoreOauth2CredentialProviderArgs(
      credentialProviderVendor: (map['credentialProviderVendor'] as String).input(),
      name: map['name'] == null ? null : ((map['name'] as String).input()).input(),
      oauth2ProviderConfig: map['oauth2ProviderConfig'] == null ? null : ((AgentcoreOauth2CredentialProviderOauth2ProviderConfig.fromMap((map['oauth2ProviderConfig']! as Map).cast<String, dynamic>())).input()).input(),
      region: map['region'] == null ? null : ((map['region'] as String).input()).input(),
    );
  }
}

