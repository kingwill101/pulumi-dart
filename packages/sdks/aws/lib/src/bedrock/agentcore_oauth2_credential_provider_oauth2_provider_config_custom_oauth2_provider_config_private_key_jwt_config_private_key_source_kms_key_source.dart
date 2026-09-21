// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AgentcoreOauth2CredentialProviderOauth2ProviderConfigCustomOauth2ProviderConfigPrivateKeyJwtConfigPrivateKeySourceKmsKeySource {
  final pulumi.Input<String> kmsKeyArn;

  /// Creates a new [AgentcoreOauth2CredentialProviderOauth2ProviderConfigCustomOauth2ProviderConfigPrivateKeyJwtConfigPrivateKeySourceKmsKeySource].
  /// [kmsKeyArn] Required.
  const AgentcoreOauth2CredentialProviderOauth2ProviderConfigCustomOauth2ProviderConfigPrivateKeyJwtConfigPrivateKeySourceKmsKeySource({
    required this.kmsKeyArn,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'kmsKeyArn': kmsKeyArn,
    };
  }

  factory AgentcoreOauth2CredentialProviderOauth2ProviderConfigCustomOauth2ProviderConfigPrivateKeyJwtConfigPrivateKeySourceKmsKeySource.fromMap(Map<String, dynamic> map) {
    return AgentcoreOauth2CredentialProviderOauth2ProviderConfigCustomOauth2ProviderConfigPrivateKeyJwtConfigPrivateKeySourceKmsKeySource(
      kmsKeyArn: pulumi.Input.fromValue(map['kmsKeyArn'] as String),
    );
  }
}
