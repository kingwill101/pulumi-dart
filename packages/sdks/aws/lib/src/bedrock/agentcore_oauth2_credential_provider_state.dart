// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'agentcore_oauth2_credential_provider_client_secret_arn.dart';
import 'agentcore_oauth2_credential_provider_oauth2_provider_config.dart';

/// Input properties used for looking up and filtering AgentcoreOauth2CredentialProvider resources.
class AgentcoreOauth2CredentialProviderState {
  /// ARN of the AWS Secrets Manager secret containing the client secret.
  final pulumi.Input<List<AgentcoreOauth2CredentialProviderClientSecretArn>>? clientSecretArns;
  /// ARN of the OAuth2 credential provider.
  final pulumi.Input<String>? credentialProviderArn;
  /// Vendor of the OAuth2 credential provider. Valid values: `CustomOauth2`, `GithubOauth2`, `GoogleOauth2`, `Microsoft`, `SalesforceOauth2`, `SlackOauth2`.
  final pulumi.Input<String>? credentialProviderVendor;
  /// Name of the OAuth2 credential provider.
  final pulumi.Input<String>? name;
  /// OAuth2 provider configuration. Must contain exactly one provider type. See `oauth2_provider_config` below.
  ///
  /// The following arguments are optional:
  final pulumi.Input<AgentcoreOauth2CredentialProviderOauth2ProviderConfig>? oauth2ProviderConfig;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Creates a new [AgentcoreOauth2CredentialProviderState].
  /// [clientSecretArns] ARN of the AWS Secrets Manager secret containing the client secret.
  /// [credentialProviderArn] ARN of the OAuth2 credential provider.
  /// [credentialProviderVendor] Vendor of the OAuth2 credential provider. Valid values: `CustomOauth2`, `GithubOauth2`, `GoogleOauth2`, `Microsoft`, `SalesforceOauth2`, `SlackOauth2`.
  /// [name] Name of the OAuth2 credential provider.
  /// [oauth2ProviderConfig] OAuth2 provider configuration. Must contain exactly one provider type. See `oauth2_provider_config` below.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  AgentcoreOauth2CredentialProviderState({
    this.clientSecretArns,
    this.credentialProviderArn,
    this.credentialProviderVendor,
    this.name,
    this.oauth2ProviderConfig,
    this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clientSecretArns': ?pulumi.Input.mapOptionalInputValue<List<AgentcoreOauth2CredentialProviderClientSecretArn>, List<Map<String, dynamic>>>(clientSecretArns, (value) => pulumi.Input.encodeList<AgentcoreOauth2CredentialProviderClientSecretArn, Map<String, dynamic>>(value, (value) => value.toMap())),
      'credentialProviderArn': ?credentialProviderArn,
      'credentialProviderVendor': ?credentialProviderVendor,
      'name': ?name,
      'oauth2ProviderConfig': ?pulumi.Input.mapOptionalInputValue<AgentcoreOauth2CredentialProviderOauth2ProviderConfig, Map<String, dynamic>>(oauth2ProviderConfig, (value) => value.toMap()),
      'region': ?region,
    };
  }

  factory AgentcoreOauth2CredentialProviderState.fromMap(Map<String, dynamic> map) {
    return AgentcoreOauth2CredentialProviderState(
      clientSecretArns: (() { final guardedValue = map['clientSecretArns']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<AgentcoreOauth2CredentialProviderClientSecretArn>(guardedValue, (value) => AgentcoreOauth2CredentialProviderClientSecretArn.fromMap((value as Map).cast<String, dynamic>()))); })(),
      credentialProviderArn: (() { final guardedValue = map['credentialProviderArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      credentialProviderVendor: (() { final guardedValue = map['credentialProviderVendor']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      oauth2ProviderConfig: (() { final guardedValue = map['oauth2ProviderConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AgentcoreOauth2CredentialProviderOauth2ProviderConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

