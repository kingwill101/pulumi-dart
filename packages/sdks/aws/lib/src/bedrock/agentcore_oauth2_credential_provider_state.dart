// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'agentcore_oauth2_credential_provider_client_secret_arn.dart';
import 'agentcore_oauth2_credential_provider_oauth2_provider_config.dart';
import 'agentcore_oauth2_credential_provider_timeouts.dart';

/// Input properties used for looking up and filtering AgentcoreOauth2CredentialProvider resources.
class AgentcoreOauth2CredentialProviderState {
  /// Callback URL to register on the OAuth2 credential provider as an allowed callback URL. This URL is where the OAuth2 authorization server redirects users after they complete the authorization flow.
  final pulumi.Input<String?>? callbackUrl;
  /// ARN of the AWS Secrets Manager secret containing the client secret.
  final pulumi.Input<List<AgentcoreOauth2CredentialProviderClientSecretArn>?>? clientSecretArns;
  /// ARN of the OAuth2 credential provider.
  final pulumi.Input<String?>? credentialProviderArn;
  /// Vendor of the OAuth2 credential provider. Valid values include `CustomOauth2`, `GithubOauth2`, `GoogleOauth2`, `MicrosoftOauth2`, `SalesforceOauth2`, `SlackOauth2`, `AtlassianOauth2`, `LinkedinOauth2`, and a number of additional supported vendors (e.g. `XOauth2`, `FacebookOauth2`, `SpotifyOauth2`) configured via `includedOauth2ProviderConfig`. Refer to the AWS API for the full, current list. See the note under `includedOauth2ProviderConfig` for vendors that are not yet supported.
  final pulumi.Input<String?>? credentialProviderVendor;
  /// Name of the OAuth2 credential provider.
  final pulumi.Input<String?>? name;
  /// OAuth2 provider configuration. Must contain exactly one provider type. See `oauth2ProviderConfig` below.
  ///
  /// The following arguments are optional:
  final pulumi.Input<AgentcoreOauth2CredentialProviderOauth2ProviderConfig?>? oauth2ProviderConfig;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String?>? region;
  /// Key-value map of resource tags. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>?>? tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  final pulumi.Input<Map<String, String>?>? tagsAll;
  final pulumi.Input<AgentcoreOauth2CredentialProviderTimeouts?>? timeouts;

  /// Creates a new [AgentcoreOauth2CredentialProviderState].
  /// [callbackUrl] Callback URL to register on the OAuth2 credential provider as an allowed callback URL. This URL is where the OAuth2 authorization server redirects users after they complete the authorization flow.
  /// [clientSecretArns] ARN of the AWS Secrets Manager secret containing the client secret.
  /// [credentialProviderArn] ARN of the OAuth2 credential provider.
  /// [credentialProviderVendor] Vendor of the OAuth2 credential provider. Valid values include `CustomOauth2`, `GithubOauth2`, `GoogleOauth2`, `MicrosoftOauth2`, `SalesforceOauth2`, `SlackOauth2`, `AtlassianOauth2`, `LinkedinOauth2`, and a number of additional supported vendors (e.g. `XOauth2`, `FacebookOauth2`, `SpotifyOauth2`) configured via `includedOauth2ProviderConfig`. Refer to the AWS API for the full, current list. See the note under `includedOauth2ProviderConfig` for vendors that are not yet supported.
  /// [name] Name of the OAuth2 credential provider.
  /// [oauth2ProviderConfig] OAuth2 provider configuration. Must contain exactly one provider type. See `oauth2ProviderConfig` below.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] Key-value map of resource tags. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] A map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  /// [timeouts] Optional.
  const AgentcoreOauth2CredentialProviderState({
    this.callbackUrl,
    this.clientSecretArns,
    this.credentialProviderArn,
    this.credentialProviderVendor,
    this.name,
    this.oauth2ProviderConfig,
    this.region,
    this.tags,
    this.tagsAll,
    this.timeouts,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'callbackUrl': ?callbackUrl,
      'clientSecretArns': ?pulumi.Input.mapOptionalInputValue<List<AgentcoreOauth2CredentialProviderClientSecretArn>, List<Map<String, dynamic>>>(clientSecretArns, (value) => pulumi.Input.encodeList<AgentcoreOauth2CredentialProviderClientSecretArn, Map<String, dynamic>>(value, (value) => value.toMap())),
      'credentialProviderArn': ?credentialProviderArn,
      'credentialProviderVendor': ?credentialProviderVendor,
      'name': ?name,
      'oauth2ProviderConfig': ?pulumi.Input.mapOptionalInputValue<AgentcoreOauth2CredentialProviderOauth2ProviderConfig, Map<String, dynamic>>(oauth2ProviderConfig, (value) => value.toMap()),
      'region': ?region,
      'tags': ?tags,
      'tagsAll': ?tagsAll,
      'timeouts': ?pulumi.Input.mapOptionalInputValue<AgentcoreOauth2CredentialProviderTimeouts, Map<String, dynamic>>(timeouts, (value) => value.toMap()),
    };
  }

  factory AgentcoreOauth2CredentialProviderState.fromMap(Map<String, dynamic> map) {
    return AgentcoreOauth2CredentialProviderState(
      callbackUrl: (() { final guardedValue = map['callbackUrl']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      clientSecretArns: (() { final guardedValue = map['clientSecretArns']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<AgentcoreOauth2CredentialProviderClientSecretArn>(guardedValue, (value) => AgentcoreOauth2CredentialProviderClientSecretArn.fromMap((value as Map).cast<String, dynamic>()))); })(),
      credentialProviderArn: (() { final guardedValue = map['credentialProviderArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      credentialProviderVendor: (() { final guardedValue = map['credentialProviderVendor']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      oauth2ProviderConfig: (() { final guardedValue = map['oauth2ProviderConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AgentcoreOauth2CredentialProviderOauth2ProviderConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      tagsAll: (() { final guardedValue = map['tagsAll']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      timeouts: (() { final guardedValue = map['timeouts']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AgentcoreOauth2CredentialProviderTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
