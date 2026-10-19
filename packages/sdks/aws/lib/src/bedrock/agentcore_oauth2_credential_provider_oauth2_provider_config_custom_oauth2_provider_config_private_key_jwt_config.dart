// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'agentcore_oauth2_credential_provider_oauth2_provider_config_custom_oauth2_provider_config_private_key_jwt_config_private_key_source.dart';

class AgentcoreOauth2CredentialProviderOauth2ProviderConfigCustomOauth2ProviderConfigPrivateKeyJwtConfig {
  /// Key-value map of additional claims to include in the JWT header.
  final pulumi.Input<Map<String, String>?>? additionalHeaderClaims;
  /// Key-value map of additional claims to include in the JWT payload.
  final pulumi.Input<Map<String, String>?>? additionalPayloadClaims;
  /// Source of the private key used to sign the JWT. See `privateKeySource` Block below.
  final pulumi.Input<AgentcoreOauth2CredentialProviderOauth2ProviderConfigCustomOauth2ProviderConfigPrivateKeyJwtConfigPrivateKeySource?>? privateKeySource;
  /// Algorithm used to sign the JWT.
  final pulumi.Input<String?>? signingAlgorithm;

  /// Creates a new [AgentcoreOauth2CredentialProviderOauth2ProviderConfigCustomOauth2ProviderConfigPrivateKeyJwtConfig].
  /// [additionalHeaderClaims] Key-value map of additional claims to include in the JWT header.
  /// [additionalPayloadClaims] Key-value map of additional claims to include in the JWT payload.
  /// [privateKeySource] Source of the private key used to sign the JWT. See `privateKeySource` Block below.
  /// [signingAlgorithm] Algorithm used to sign the JWT.
  const AgentcoreOauth2CredentialProviderOauth2ProviderConfigCustomOauth2ProviderConfigPrivateKeyJwtConfig({
    this.additionalHeaderClaims,
    this.additionalPayloadClaims,
    this.privateKeySource,
    this.signingAlgorithm,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'additionalHeaderClaims': ?additionalHeaderClaims,
      'additionalPayloadClaims': ?additionalPayloadClaims,
      'privateKeySource': ?pulumi.Input.mapOptionalInputValue<AgentcoreOauth2CredentialProviderOauth2ProviderConfigCustomOauth2ProviderConfigPrivateKeyJwtConfigPrivateKeySource, Map<String, dynamic>>(privateKeySource, (value) => value.toMap()),
      'signingAlgorithm': ?signingAlgorithm,
    };
  }

  factory AgentcoreOauth2CredentialProviderOauth2ProviderConfigCustomOauth2ProviderConfigPrivateKeyJwtConfig.fromMap(Map<String, dynamic> map) {
    return AgentcoreOauth2CredentialProviderOauth2ProviderConfigCustomOauth2ProviderConfigPrivateKeyJwtConfig(
      additionalHeaderClaims: (() { final guardedValue = map['additionalHeaderClaims']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      additionalPayloadClaims: (() { final guardedValue = map['additionalPayloadClaims']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      privateKeySource: (() { final guardedValue = map['privateKeySource']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AgentcoreOauth2CredentialProviderOauth2ProviderConfigCustomOauth2ProviderConfigPrivateKeyJwtConfigPrivateKeySource.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      signingAlgorithm: (() { final guardedValue = map['signingAlgorithm']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
