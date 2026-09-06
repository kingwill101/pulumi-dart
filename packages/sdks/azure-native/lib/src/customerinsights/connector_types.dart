import 'package:pulumi/pulumi.dart' as pulumi;

/// Type of connector.
enum ConnectorTypes implements pulumi.PulumiEnum<String> {
  valueNone("None"),
  valueCRM("CRM"),
  valueAzureBlob("AzureBlob"),
  valueSalesforce("Salesforce"),
  valueExchangeOnline("ExchangeOnline"),
  valueOutbound("Outbound");

  const ConnectorTypes(this.wireValue);
  @override
  final String wireValue;

  static ConnectorTypes fromValue(String value) {
    for (final item in ConnectorTypes.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ConnectorTypes value: $value');
  }
}
