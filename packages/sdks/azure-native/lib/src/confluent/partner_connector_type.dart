/// The partner connector type.
enum PartnerConnectorType {
  kafkaAzureBlobStorageSource("KafkaAzureBlobStorageSource"),
  kafkaAzureBlobStorageSink("KafkaAzureBlobStorageSink"),
  kafkaAzureCosmosDBSource("KafkaAzureCosmosDBSource"),
  kafkaAzureCosmosDBSink("KafkaAzureCosmosDBSink"),
  kafkaAzureSynapseAnalyticsSink("KafkaAzureSynapseAnalyticsSink");

  const PartnerConnectorType(this.value);
  final String value;

  static PartnerConnectorType fromValue(String value) {
    for (final item in PartnerConnectorType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown PartnerConnectorType value: $value');
  }
}

