// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'agentcore_oauth2_credential_provider_oauth2_provider_config.dart';
import 'agentcore_oauth2_credential_provider_timeouts.dart';

/// {@template pulumi_bedrock_agentcore_oauth2_credential_provider_agentcore_oauth2_credential_provider_args_doc}
/// The set of arguments for AgentcoreOauth2CredentialProvider.
/// {@endtemplate}
/// {@macro pulumi_bedrock_agentcore_oauth2_credential_provider_agentcore_oauth2_credential_provider_args_doc}
class AgentcoreOauth2CredentialProviderArgs {
  /// Vendor of the OAuth2 credential provider. Valid values include `CustomOauth2`, `GithubOauth2`, `GoogleOauth2`, `MicrosoftOauth2`, `SalesforceOauth2`, `SlackOauth2`, `AtlassianOauth2`, `LinkedinOauth2`, and a number of additional supported vendors (e.g. `XOauth2`, `FacebookOauth2`, `SpotifyOauth2`) configured via `includedOauth2ProviderConfig`. Refer to the AWS API for the full, current list. See the note under `includedOauth2ProviderConfig` for vendors that are not yet supported.
  final pulumi.Input<String> credentialProviderVendor;
  /// Name of the OAuth2 credential provider.
  final pulumi.Input<String?>? name;
  /// OAuth2 provider configuration. Must contain exactly one provider type. See `oauth2ProviderConfig` below.
  ///
  /// The following arguments are optional:
  final pulumi.Input<AgentcoreOauth2CredentialProviderOauth2ProviderConfig> oauth2ProviderConfig;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String?>? region;
  /// Key-value map of resource tags. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>?>? tags;
  final pulumi.Input<AgentcoreOauth2CredentialProviderTimeouts?>? timeouts;

  /// Creates a new [AgentcoreOauth2CredentialProviderArgs].
  /// [credentialProviderVendor] Vendor of the OAuth2 credential provider. Valid values include `CustomOauth2`, `GithubOauth2`, `GoogleOauth2`, `MicrosoftOauth2`, `SalesforceOauth2`, `SlackOauth2`, `AtlassianOauth2`, `LinkedinOauth2`, and a number of additional supported vendors (e.g. `XOauth2`, `FacebookOauth2`, `SpotifyOauth2`) configured via `includedOauth2ProviderConfig`. Refer to the AWS API for the full, current list. See the note under `includedOauth2ProviderConfig` for vendors that are not yet supported.
  /// [name] Name of the OAuth2 credential provider.
  /// [oauth2ProviderConfig] OAuth2 provider configuration. Must contain exactly one provider type. See `oauth2ProviderConfig` below.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] Key-value map of resource tags. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [timeouts] Optional.
  const AgentcoreOauth2CredentialProviderArgs({
    required this.credentialProviderVendor,
    this.name,
    required this.oauth2ProviderConfig,
    this.region,
    this.tags,
    this.timeouts,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'credentialProviderVendor': credentialProviderVendor,
      'name': ?name,
      'oauth2ProviderConfig': pulumi.Input.mapInputValue<AgentcoreOauth2CredentialProviderOauth2ProviderConfig, Map<String, dynamic>>(oauth2ProviderConfig, (value) => value.toMap()),
      'region': ?region,
      'tags': ?tags,
      'timeouts': ?pulumi.Input.mapOptionalInputValue<AgentcoreOauth2CredentialProviderTimeouts, Map<String, dynamic>>(timeouts, (value) => value.toMap()),
    };
  }

  factory AgentcoreOauth2CredentialProviderArgs.fromMap(Map<String, dynamic> map) {
    return AgentcoreOauth2CredentialProviderArgs(
      credentialProviderVendor: pulumi.Input.fromValue(map['credentialProviderVendor'] as String),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      oauth2ProviderConfig: pulumi.Input.fromValue(AgentcoreOauth2CredentialProviderOauth2ProviderConfig.fromMap((map['oauth2ProviderConfig']! as Map).cast<String, dynamic>())),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      timeouts: (() { final guardedValue = map['timeouts']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AgentcoreOauth2CredentialProviderTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
