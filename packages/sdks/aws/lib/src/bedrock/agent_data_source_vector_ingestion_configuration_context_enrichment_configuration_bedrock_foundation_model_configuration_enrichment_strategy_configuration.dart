// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AgentDataSourceVectorIngestionConfigurationContextEnrichmentConfigurationBedrockFoundationModelConfigurationEnrichmentStrategyConfiguration {
  /// Method used to enrich the context of data source documents. Valid value: `CHUNK_ENTITY_EXTRACTION`.
  final pulumi.Input<String> method;

  /// Creates a new [AgentDataSourceVectorIngestionConfigurationContextEnrichmentConfigurationBedrockFoundationModelConfigurationEnrichmentStrategyConfiguration].
  /// [method] Method used to enrich the context of data source documents. Valid value: `CHUNK_ENTITY_EXTRACTION`.
  const AgentDataSourceVectorIngestionConfigurationContextEnrichmentConfigurationBedrockFoundationModelConfigurationEnrichmentStrategyConfiguration({
    required this.method,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'method': method,
    };
  }

  factory AgentDataSourceVectorIngestionConfigurationContextEnrichmentConfigurationBedrockFoundationModelConfigurationEnrichmentStrategyConfiguration.fromMap(Map<String, dynamic> map) {
    return AgentDataSourceVectorIngestionConfigurationContextEnrichmentConfigurationBedrockFoundationModelConfigurationEnrichmentStrategyConfiguration(
      method: pulumi.Input.fromValue(map['method'] as String),
    );
  }
}
