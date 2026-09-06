import 'package:pulumi/pulumi.dart' as pulumi;

/// Authentication type of the connection target
enum ConnectionAuthType implements pulumi.PulumiEnum<String> {
  pAT("PAT"),
  managedIdentity("ManagedIdentity"),
  usernamePassword("UsernamePassword"),
  none("None"),
  sAS("SAS"),
  accountKey("AccountKey"),
  servicePrincipal("ServicePrincipal"),
  accessKey("AccessKey"),
  apiKey("ApiKey"),
  customKeys("CustomKeys"),
  oAuth2("OAuth2"),
  aAD("AAD"),
  delegatedSAS("DelegatedSAS"),
  projectManagedIdentity("ProjectManagedIdentity"),
  accountManagedIdentity("AccountManagedIdentity"),
  userEntraToken("UserEntraToken"),
  agentUserImpersonation("AgentUserImpersonation"),
  agenticIdentityToken("AgenticIdentityToken"),
  agenticUser("AgenticUser");

  const ConnectionAuthType(this.wireValue);
  @override
  final String wireValue;

  static ConnectionAuthType fromValue(String value) {
    for (final item in ConnectionAuthType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ConnectionAuthType value: $value');
  }
}
