// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'agent_data_source_vector_ingestion_configuration_context_enrichment_configuration_bedrock_foundation_model_configuration.dart';

class AgentDataSourceVectorIngestionConfigurationContextEnrichmentConfiguration {
  /// Settings for a foundation model used to enrich the context of data source documents. Required when `type` is `BEDROCK_FOUNDATION_MODEL`. See `context_enrichment_configuration.bedrock_foundation_model_configuration` Block for details.
  final pulumi.Input<AgentDataSourceVectorIngestionConfigurationContextEnrichmentConfigurationBedrockFoundationModelConfiguration?>? bedrockFoundationModelConfiguration;
  /// Method used for context enrichment. Valid value: `BEDROCK_FOUNDATION_MODEL`.
  final pulumi.Input<String> type;

  /// Creates a new [AgentDataSourceVectorIngestionConfigurationContextEnrichmentConfiguration].
  /// [bedrockFoundationModelConfiguration] Settings for a foundation model used to enrich the context of data source documents. Required when `type` is `BEDROCK_FOUNDATION_MODEL`. See `context_enrichment_configuration.bedrock_foundation_model_configuration` Block for details.
  /// [type] Method used for context enrichment. Valid value: `BEDROCK_FOUNDATION_MODEL`.
  const AgentDataSourceVectorIngestionConfigurationContextEnrichmentConfiguration({
    this.bedrockFoundationModelConfiguration,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bedrockFoundationModelConfiguration': ?pulumi.Input.mapOptionalInputValue<AgentDataSourceVectorIngestionConfigurationContextEnrichmentConfigurationBedrockFoundationModelConfiguration, Map<String, dynamic>>(bedrockFoundationModelConfiguration, (value) => value.toMap()),
      'type': type,
    };
  }

  factory AgentDataSourceVectorIngestionConfigurationContextEnrichmentConfiguration.fromMap(Map<String, dynamic> map) {
    return AgentDataSourceVectorIngestionConfigurationContextEnrichmentConfiguration(
      bedrockFoundationModelConfiguration: (() { final guardedValue = map['bedrockFoundationModelConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AgentDataSourceVectorIngestionConfigurationContextEnrichmentConfigurationBedrockFoundationModelConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}
