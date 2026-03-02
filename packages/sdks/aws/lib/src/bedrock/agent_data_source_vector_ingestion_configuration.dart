// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'agent_data_source_vector_ingestion_configuration_chunking_configuration.dart';
import 'agent_data_source_vector_ingestion_configuration_custom_transformation_configuration.dart';
import 'agent_data_source_vector_ingestion_configuration_parsing_configuration.dart';

class AgentDataSourceVectorIngestionConfiguration {
  /// Details about how to chunk the documents in the data source. A chunk refers to an excerpt from a data source that is returned when the knowledge base that it belongs to is queried. See `chunking_configuration` block for details.
  final pulumi.Input<AgentDataSourceVectorIngestionConfigurationChunkingConfiguration>? chunkingConfiguration;
  /// Configuration for custom transformation of data source documents.
  final pulumi.Input<AgentDataSourceVectorIngestionConfigurationCustomTransformationConfiguration>? customTransformationConfiguration;
  /// Configuration for custom parsing of data source documents. See `parsing_configuration` block for details.
  final pulumi.Input<AgentDataSourceVectorIngestionConfigurationParsingConfiguration>? parsingConfiguration;

  /// Creates a new [AgentDataSourceVectorIngestionConfiguration].
  /// [chunkingConfiguration] Details about how to chunk the documents in the data source. A chunk refers to an excerpt from a data source that is returned when the knowledge base that it belongs to is queried. See `chunking_configuration` block for details.
  /// [customTransformationConfiguration] Configuration for custom transformation of data source documents.
  /// [parsingConfiguration] Configuration for custom parsing of data source documents. See `parsing_configuration` block for details.
  AgentDataSourceVectorIngestionConfiguration({
    this.chunkingConfiguration,
    this.customTransformationConfiguration,
    this.parsingConfiguration,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'chunkingConfiguration': ?pulumi.Input.mapOptionalInputValue<AgentDataSourceVectorIngestionConfigurationChunkingConfiguration, Map<String, dynamic>>(chunkingConfiguration, (value) => value.toMap()),
      'customTransformationConfiguration': ?pulumi.Input.mapOptionalInputValue<AgentDataSourceVectorIngestionConfigurationCustomTransformationConfiguration, Map<String, dynamic>>(customTransformationConfiguration, (value) => value.toMap()),
      'parsingConfiguration': ?pulumi.Input.mapOptionalInputValue<AgentDataSourceVectorIngestionConfigurationParsingConfiguration, Map<String, dynamic>>(parsingConfiguration, (value) => value.toMap()),
    };
  }

  factory AgentDataSourceVectorIngestionConfiguration.fromMap(Map<String, dynamic> map) {
    return AgentDataSourceVectorIngestionConfiguration(
      chunkingConfiguration: map['chunkingConfiguration'] == null ? null : ((AgentDataSourceVectorIngestionConfigurationChunkingConfiguration.fromMap((map['chunkingConfiguration']! as Map).cast<String, dynamic>())).input()).input(),
      customTransformationConfiguration: map['customTransformationConfiguration'] == null ? null : ((AgentDataSourceVectorIngestionConfigurationCustomTransformationConfiguration.fromMap((map['customTransformationConfiguration']! as Map).cast<String, dynamic>())).input()).input(),
      parsingConfiguration: map['parsingConfiguration'] == null ? null : ((AgentDataSourceVectorIngestionConfigurationParsingConfiguration.fromMap((map['parsingConfiguration']! as Map).cast<String, dynamic>())).input()).input(),
    );
  }
}

