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
    pulumi.Output<List<AgentcoreOauth2CredentialProviderClientSecretArn>>? clientSecretArns,
    pulumi.Output<String>? credentialProviderArn,
    pulumi.Output<String>? credentialProviderVendor,
    pulumi.Output<String>? name,
    pulumi.Output<AgentcoreOauth2CredentialProviderOauth2ProviderConfig>? oauth2ProviderConfig,
    pulumi.Output<String>? region,
  }) :
      clientSecretArns = pulumi.Input.asOptionalInput<List<AgentcoreOauth2CredentialProviderClientSecretArn>>(clientSecretArns),
      credentialProviderArn = pulumi.Input.asOptionalInput<String>(credentialProviderArn),
      credentialProviderVendor = pulumi.Input.asOptionalInput<String>(credentialProviderVendor),
      name = pulumi.Input.asOptionalInput<String>(name),
      oauth2ProviderConfig = pulumi.Input.asOptionalInput<AgentcoreOauth2CredentialProviderOauth2ProviderConfig>(oauth2ProviderConfig),
      region = pulumi.Input.asOptionalInput<String>(region);

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
      clientSecretArns: map['clientSecretArns'] == null ? null : pulumi.Output.create<List<AgentcoreOauth2CredentialProviderClientSecretArn>>(pulumi.Input.decodeList<AgentcoreOauth2CredentialProviderClientSecretArn>(map['clientSecretArns'], (value) => AgentcoreOauth2CredentialProviderClientSecretArn.fromMap((value as Map).cast<String, dynamic>()))),
      credentialProviderArn: map['credentialProviderArn'] == null ? null : pulumi.Output.create<String>(map['credentialProviderArn'] as String),
      credentialProviderVendor: map['credentialProviderVendor'] == null ? null : pulumi.Output.create<String>(map['credentialProviderVendor'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      oauth2ProviderConfig: map['oauth2ProviderConfig'] == null ? null : pulumi.Output.create<AgentcoreOauth2CredentialProviderOauth2ProviderConfig>(AgentcoreOauth2CredentialProviderOauth2ProviderConfig.fromMap((map['oauth2ProviderConfig'] as Map).cast<String, dynamic>())),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
    );
  }
}

