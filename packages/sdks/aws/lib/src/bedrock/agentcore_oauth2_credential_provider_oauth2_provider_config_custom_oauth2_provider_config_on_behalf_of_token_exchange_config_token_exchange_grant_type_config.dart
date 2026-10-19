// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AgentcoreOauth2CredentialProviderOauth2ProviderConfigCustomOauth2ProviderConfigOnBehalfOfTokenExchangeConfigTokenExchangeGrantTypeConfig {
  /// Content type for the actor token in the token exchange. Valid values: `NONE`, `M2M`, `AWS_IAM_ID_TOKEN_JWT`.
  final pulumi.Input<String> actorTokenContent;
  /// Set of scopes for the actor token. Only valid when `actorTokenContent` is `M2M`.
  final pulumi.Input<List<String>?>? actorTokenScopes;

  /// Creates a new [AgentcoreOauth2CredentialProviderOauth2ProviderConfigCustomOauth2ProviderConfigOnBehalfOfTokenExchangeConfigTokenExchangeGrantTypeConfig].
  /// [actorTokenContent] Content type for the actor token in the token exchange. Valid values: `NONE`, `M2M`, `AWS_IAM_ID_TOKEN_JWT`.
  /// [actorTokenScopes] Set of scopes for the actor token. Only valid when `actorTokenContent` is `M2M`.
  const AgentcoreOauth2CredentialProviderOauth2ProviderConfigCustomOauth2ProviderConfigOnBehalfOfTokenExchangeConfigTokenExchangeGrantTypeConfig({
    required this.actorTokenContent,
    this.actorTokenScopes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'actorTokenContent': actorTokenContent,
      'actorTokenScopes': ?actorTokenScopes,
    };
  }

  factory AgentcoreOauth2CredentialProviderOauth2ProviderConfigCustomOauth2ProviderConfigOnBehalfOfTokenExchangeConfigTokenExchangeGrantTypeConfig.fromMap(Map<String, dynamic> map) {
    return AgentcoreOauth2CredentialProviderOauth2ProviderConfigCustomOauth2ProviderConfigOnBehalfOfTokenExchangeConfigTokenExchangeGrantTypeConfig(
      actorTokenContent: pulumi.Input.fromValue(map['actorTokenContent'] as String),
      actorTokenScopes: (() { final guardedValue = map['actorTokenScopes']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}
