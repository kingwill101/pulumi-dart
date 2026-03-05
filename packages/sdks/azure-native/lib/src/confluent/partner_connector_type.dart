/// The partner connector type.
enum PartnerConnectorType {
  kafkaAzureBlobStorageSource("KafkaAzureBlobStorageSource"),
  kafkaAzureBlobStorageSink("KafkaAzureBlobStorageSink"),
  kafkaAzureCosmosDBSource("KafkaAzureCosmosDBSource"),
  kafkaAzureCosmosDBSink("KafkaAzureCosmosDBSink"),
  kafkaAzureSynapseAnalyticsSink("KafkaAzureSynapseAnalyticsSink");

  const PartnerConnectorType(this.wireValue);
  final String wireValue;

  static PartnerConnectorType fromValue(String value) {
    for (final item in PartnerConnectorType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown PartnerConnectorType value: $value');
  }
}

