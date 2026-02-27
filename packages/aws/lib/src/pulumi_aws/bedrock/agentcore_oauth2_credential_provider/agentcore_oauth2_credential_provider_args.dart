// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../agentcore_oauth2_credential_provider_oauth2_provider_config/agentcore_oauth2_credential_provider_oauth2_provider_config.dart';

/// The set of arguments for AgentcoreOauth2CredentialProvider.
class AgentcoreOauth2CredentialProviderArgs {
  /// Vendor of the OAuth2 credential provider. Valid values: `CustomOauth2`, `GithubOauth2`, `GoogleOauth2`, `Microsoft`, `SalesforceOauth2`, `SlackOauth2`.
  final Input<String> credentialProviderVendor;

  /// Name of the OAuth2 credential provider.
  final Input<String>? name;

  /// OAuth2 provider configuration. Must contain exactly one provider type. See `oauth2_provider_config` below.
  ///
  /// The following arguments are optional:
  final Input<AgentcoreOauth2CredentialProviderOauth2ProviderConfig>?
      oauth2ProviderConfig;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  AgentcoreOauth2CredentialProviderArgs({
    required this.credentialProviderVendor,
    this.name,
    this.oauth2ProviderConfig,
    this.region,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['credentialProviderVendor'] = credentialProviderVendor;
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final oauth2ProviderConfigValue = oauth2ProviderConfig;
    if (oauth2ProviderConfigValue != null) {
      map['oauth2ProviderConfig'] = Input.mapOptionalInputValue<
              AgentcoreOauth2CredentialProviderOauth2ProviderConfig,
              Map<String, dynamic>>(
          oauth2ProviderConfigValue, (value) => value.toMap());
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    return map;
  }

  factory AgentcoreOauth2CredentialProviderArgs.fromMap(
      Map<String, dynamic> map) {
    return AgentcoreOauth2CredentialProviderArgs(
      credentialProviderVendor:
          Input.asInput<String>(map['credentialProviderVendor']),
      name: Input.asOptionalInput<String>(map['name']),
      oauth2ProviderConfig: Input.asOptionalInput<
              AgentcoreOauth2CredentialProviderOauth2ProviderConfig>(
          map['oauth2ProviderConfig']),
      region: Input.asOptionalInput<String>(map['region']),
    );
  }
}
