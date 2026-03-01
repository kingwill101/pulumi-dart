/// Service ID
enum ServiceIdentifier {
  aKS("AKS"),
  appService("AppService"),
  azureFirewalls("AzureFirewalls"),
  containerRegistry("ContainerRegistry"),
  cosmosDB("CosmosDB"),
  dataConnectors("DataConnectors"),
  insights("Insights"),
  keyVault("KeyVault"),
  logic("Logic"),
  microsoftSql("MicrosoftSQL"),
  monitoring("Monitoring"),
  postgreSql("PostgreSQL"),
  privateDNSZones("PrivateDNSZones"),
  serviceBus("ServiceBus"),
  storage("Storage");

  const ServiceIdentifier(this.value);
  final String value;

  static ServiceIdentifier fromValue(String value) {
    for (final item in ServiceIdentifier.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ServiceIdentifier value: $value');
  }
}

