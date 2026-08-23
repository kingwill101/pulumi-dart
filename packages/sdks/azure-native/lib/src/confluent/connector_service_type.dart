/// The connector service type.
enum ConnectorServiceType {
  azureBlobStorageSinkConnector("AzureBlobStorageSinkConnector"),
  azureBlobStorageSourceConnector("AzureBlobStorageSourceConnector"),
  azureCosmosDBSinkConnector("AzureCosmosDBSinkConnector"),
  azureCosmosDBSourceConnector("AzureCosmosDBSourceConnector"),
  azureSynapseAnalyticsSinkConnector("AzureSynapseAnalyticsSinkConnector");

  const ConnectorServiceType(this.wireValue);
  final String wireValue;

  static ConnectorServiceType fromValue(String value) {
    for (final item in ConnectorServiceType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ConnectorServiceType value: $value');
  }
}
