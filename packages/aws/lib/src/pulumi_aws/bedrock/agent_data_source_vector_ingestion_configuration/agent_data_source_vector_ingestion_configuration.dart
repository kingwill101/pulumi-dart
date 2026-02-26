// ignore_for_file: unused_element, unnecessary_cast

import '../agent_data_source_vector_ingestion_configuration_chunking_configuration/agent_data_source_vector_ingestion_configuration_chunking_configuration.dart';
import '../agent_data_source_vector_ingestion_configuration_custom_transformation_configuration/agent_data_source_vector_ingestion_configuration_custom_transformation_configuration.dart';
import '../agent_data_source_vector_ingestion_configuration_parsing_configuration/agent_data_source_vector_ingestion_configuration_parsing_configuration.dart';

class AgentDataSourceVectorIngestionConfiguration {
  /// Details about how to chunk the documents in the data source. A chunk refers to an excerpt from a data source that is returned when the knowledge base that it belongs to is queried. See <span pulumi-lang-nodejs="`chunkingConfiguration`" pulumi-lang-dotnet="`ChunkingConfiguration`" pulumi-lang-go="`chunkingConfiguration`" pulumi-lang-python="`chunking_configuration`" pulumi-lang-yaml="`chunkingConfiguration`" pulumi-lang-java="`chunkingConfiguration`">`chunking_configuration`</span> block for details.
  final AgentDataSourceVectorIngestionConfigurationChunkingConfiguration?
      chunkingConfiguration;

  /// Configuration for custom transformation of data source documents.
  final AgentDataSourceVectorIngestionConfigurationCustomTransformationConfiguration?
      customTransformationConfiguration;

  /// Configuration for custom parsing of data source documents. See <span pulumi-lang-nodejs="`parsingConfiguration`" pulumi-lang-dotnet="`ParsingConfiguration`" pulumi-lang-go="`parsingConfiguration`" pulumi-lang-python="`parsing_configuration`" pulumi-lang-yaml="`parsingConfiguration`" pulumi-lang-java="`parsingConfiguration`">`parsing_configuration`</span> block for details.
  final AgentDataSourceVectorIngestionConfigurationParsingConfiguration?
      parsingConfiguration;

  AgentDataSourceVectorIngestionConfiguration({
    this.chunkingConfiguration,
    this.customTransformationConfiguration,
    this.parsingConfiguration,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final chunkingConfigurationValue = chunkingConfiguration;
    if (chunkingConfigurationValue != null) {
      map['chunkingConfiguration'] = chunkingConfigurationValue.toMap();
    }
    final customTransformationConfigurationValue =
        customTransformationConfiguration;
    if (customTransformationConfigurationValue != null) {
      map['customTransformationConfiguration'] =
          customTransformationConfigurationValue.toMap();
    }
    final parsingConfigurationValue = parsingConfiguration;
    if (parsingConfigurationValue != null) {
      map['parsingConfiguration'] = parsingConfigurationValue.toMap();
    }
    return map;
  }

  factory AgentDataSourceVectorIngestionConfiguration.fromMap(
      Map<String, dynamic> map) {
    return AgentDataSourceVectorIngestionConfiguration(
      chunkingConfiguration: map['chunkingConfiguration'] == null
          ? null
          : AgentDataSourceVectorIngestionConfigurationChunkingConfiguration
              .fromMap((map['chunkingConfiguration'] as Map)
                  .cast<String, dynamic>()),
      customTransformationConfiguration: map[
                  'customTransformationConfiguration'] ==
              null
          ? null
          : AgentDataSourceVectorIngestionConfigurationCustomTransformationConfiguration
              .fromMap((map['customTransformationConfiguration'] as Map)
                  .cast<String, dynamic>()),
      parsingConfiguration: map['parsingConfiguration'] == null
          ? null
          : AgentDataSourceVectorIngestionConfigurationParsingConfiguration
              .fromMap(
                  (map['parsingConfiguration'] as Map).cast<String, dynamic>()),
    );
  }
}
