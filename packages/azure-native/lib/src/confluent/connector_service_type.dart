/// The connector service type.
enum ConnectorServiceType {
  azureBlobStorageSinkConnector("AzureBlobStorageSinkConnector"),
  azureBlobStorageSourceConnector("AzureBlobStorageSourceConnector"),
  azureCosmosDBSinkConnector("AzureCosmosDBSinkConnector"),
  azureCosmosDBSourceConnector("AzureCosmosDBSourceConnector"),
  azureSynapseAnalyticsSinkConnector("AzureSynapseAnalyticsSinkConnector");

  const ConnectorServiceType(this.value);
  final String value;

  static ConnectorServiceType fromValue(String value) {
    for (final item in ConnectorServiceType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ConnectorServiceType value: $value');
  }
}

