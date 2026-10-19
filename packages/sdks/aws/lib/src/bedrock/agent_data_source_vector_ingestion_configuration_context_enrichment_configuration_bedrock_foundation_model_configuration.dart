// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'agent_data_source_vector_ingestion_configuration_context_enrichment_configuration_bedrock_foundation_model_configuration_enrichment_strategy_configuration.dart';

class AgentDataSourceVectorIngestionConfigurationContextEnrichmentConfigurationBedrockFoundationModelConfiguration {
  /// Strategy used to enrich the context of data source documents. See `context_enrichment_configuration.bedrock_foundation_model_configuration.enrichment_strategy_configuration` Block for details.
  final pulumi.Input<AgentDataSourceVectorIngestionConfigurationContextEnrichmentConfigurationBedrockFoundationModelConfigurationEnrichmentStrategyConfiguration> enrichmentStrategyConfiguration;
  /// ARN of the model used to parse documents.
  final pulumi.Input<String> modelArn;

  /// Creates a new [AgentDataSourceVectorIngestionConfigurationContextEnrichmentConfigurationBedrockFoundationModelConfiguration].
  /// [enrichmentStrategyConfiguration] Strategy used to enrich the context of data source documents. See `context_enrichment_configuration.bedrock_foundation_model_configuration.enrichment_strategy_configuration` Block for details.
  /// [modelArn] ARN of the model used to parse documents.
  const AgentDataSourceVectorIngestionConfigurationContextEnrichmentConfigurationBedrockFoundationModelConfiguration({
    required this.enrichmentStrategyConfiguration,
    required this.modelArn,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enrichmentStrategyConfiguration': pulumi.Input.mapInputValue<AgentDataSourceVectorIngestionConfigurationContextEnrichmentConfigurationBedrockFoundationModelConfigurationEnrichmentStrategyConfiguration, Map<String, dynamic>>(enrichmentStrategyConfiguration, (value) => value.toMap()),
      'modelArn': modelArn,
    };
  }

  factory AgentDataSourceVectorIngestionConfigurationContextEnrichmentConfigurationBedrockFoundationModelConfiguration.fromMap(Map<String, dynamic> map) {
    return AgentDataSourceVectorIngestionConfigurationContextEnrichmentConfigurationBedrockFoundationModelConfiguration(
      enrichmentStrategyConfiguration: pulumi.Input.fromValue(AgentDataSourceVectorIngestionConfigurationContextEnrichmentConfigurationBedrockFoundationModelConfigurationEnrichmentStrategyConfiguration.fromMap((map['enrichmentStrategyConfiguration']! as Map).cast<String, dynamic>())),
      modelArn: pulumi.Input.fromValue(map['modelArn'] as String),
    );
  }
}
