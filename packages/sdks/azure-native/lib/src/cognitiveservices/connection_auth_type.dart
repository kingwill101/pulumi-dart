import 'package:pulumi/pulumi.dart' as pulumi;

/// Authentication type of the connection target
enum ConnectionAuthType implements pulumi.PulumiEnum<String> {
  valuePAT("PAT"),
  valueManagedIdentity("ManagedIdentity"),
  valueUsernamePassword("UsernamePassword"),
  valueNone("None"),
  valueSAS("SAS"),
  valueAccountKey("AccountKey"),
  valueServicePrincipal("ServicePrincipal"),
  valueAccessKey("AccessKey"),
  valueApiKey("ApiKey"),
  valueCustomKeys("CustomKeys"),
  valueOAuth2("OAuth2"),
  valueAAD("AAD");

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
