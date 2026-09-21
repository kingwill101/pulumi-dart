// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'agentcore_oauth2_credential_provider_oauth2_provider_config_custom_oauth2_provider_config_private_key_jwt_config_private_key_source_kms_key_source.dart';

class AgentcoreOauth2CredentialProviderOauth2ProviderConfigCustomOauth2ProviderConfigPrivateKeyJwtConfigPrivateKeySource {
  final pulumi.Input<AgentcoreOauth2CredentialProviderOauth2ProviderConfigCustomOauth2ProviderConfigPrivateKeyJwtConfigPrivateKeySourceKmsKeySource?>? kmsKeySource;

  /// Creates a new [AgentcoreOauth2CredentialProviderOauth2ProviderConfigCustomOauth2ProviderConfigPrivateKeyJwtConfigPrivateKeySource].
  /// [kmsKeySource] Optional.
  const AgentcoreOauth2CredentialProviderOauth2ProviderConfigCustomOauth2ProviderConfigPrivateKeyJwtConfigPrivateKeySource({
    this.kmsKeySource,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'kmsKeySource': ?pulumi.Input.mapOptionalInputValue<AgentcoreOauth2CredentialProviderOauth2ProviderConfigCustomOauth2ProviderConfigPrivateKeyJwtConfigPrivateKeySourceKmsKeySource, Map<String, dynamic>>(kmsKeySource, (value) => value.toMap()),
    };
  }

  factory AgentcoreOauth2CredentialProviderOauth2ProviderConfigCustomOauth2ProviderConfigPrivateKeyJwtConfigPrivateKeySource.fromMap(Map<String, dynamic> map) {
    return AgentcoreOauth2CredentialProviderOauth2ProviderConfigCustomOauth2ProviderConfigPrivateKeyJwtConfigPrivateKeySource(
      kmsKeySource: (() { final guardedValue = map['kmsKeySource']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AgentcoreOauth2CredentialProviderOauth2ProviderConfigCustomOauth2ProviderConfigPrivateKeyJwtConfigPrivateKeySourceKmsKeySource.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
