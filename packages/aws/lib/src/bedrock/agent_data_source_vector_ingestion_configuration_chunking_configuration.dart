// ignore_for_file: unused_element, unnecessary_cast

import 'agent_data_source_vector_ingestion_configuration_chunking_configuration_fixed_size_chunking_configuration.dart';
import 'agent_data_source_vector_ingestion_configuration_chunking_configuration_hierarchical_chunking_configuration.dart';
import 'agent_data_source_vector_ingestion_configuration_chunking_configuration_semantic_chunking_configuration.dart';

class AgentDataSourceVectorIngestionConfigurationChunkingConfiguration {
  /// Option for chunking your source data, either in fixed-sized chunks or as one chunk. Valid values: `FIXED_SIZE`, `HIERARCHICAL`, `SEMANTIC`, `NONE`.
  final String chunkingStrategy;

  /// Configurations for when you choose fixed-size chunking. Requires chunking_strategy as `FIXED_SIZE`. See `fixed_size_chunking_configuration` for details.
  final AgentDataSourceVectorIngestionConfigurationChunkingConfigurationFixedSizeChunkingConfiguration?
      fixedSizeChunkingConfiguration;

  /// Configurations for when you choose hierarchical chunking. Requires chunking_strategy as `HIERARCHICAL`. See `hierarchical_chunking_configuration` for details.
  final AgentDataSourceVectorIngestionConfigurationChunkingConfigurationHierarchicalChunkingConfiguration?
      hierarchicalChunkingConfiguration;

  /// Configurations for when you choose semantic chunking. Requires chunking_strategy as `SEMANTIC`. See `semantic_chunking_configuration` for details.
  final AgentDataSourceVectorIngestionConfigurationChunkingConfigurationSemanticChunkingConfiguration?
      semanticChunkingConfiguration;

  /// Creates a new [AgentDataSourceVectorIngestionConfigurationChunkingConfiguration].
  /// [chunkingStrategy] Option for chunking your source data, either in fixed-sized chunks or as one chunk. Valid values: `FIXED_SIZE`, `HIERARCHICAL`, `SEMANTIC`, `NONE`.
  /// [fixedSizeChunkingConfiguration] Configurations for when you choose fixed-size chunking. Requires chunking_strategy as `FIXED_SIZE`. See `fixed_size_chunking_configuration` for details.
  /// [hierarchicalChunkingConfiguration] Configurations for when you choose hierarchical chunking. Requires chunking_strategy as `HIERARCHICAL`. See `hierarchical_chunking_configuration` for details.
  /// [semanticChunkingConfiguration] Configurations for when you choose semantic chunking. Requires chunking_strategy as `SEMANTIC`. See `semantic_chunking_configuration` for details.
  AgentDataSourceVectorIngestionConfigurationChunkingConfiguration({
    required this.chunkingStrategy,
    this.fixedSizeChunkingConfiguration,
    this.hierarchicalChunkingConfiguration,
    this.semanticChunkingConfiguration,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['chunkingStrategy'] = chunkingStrategy;
    final fixedSizeChunkingConfigurationValue = fixedSizeChunkingConfiguration;
    if (fixedSizeChunkingConfigurationValue != null) {
      map['fixedSizeChunkingConfiguration'] =
          fixedSizeChunkingConfigurationValue.toMap();
    }
    final hierarchicalChunkingConfigurationValue =
        hierarchicalChunkingConfiguration;
    if (hierarchicalChunkingConfigurationValue != null) {
      map['hierarchicalChunkingConfiguration'] =
          hierarchicalChunkingConfigurationValue.toMap();
    }
    final semanticChunkingConfigurationValue = semanticChunkingConfiguration;
    if (semanticChunkingConfigurationValue != null) {
      map['semanticChunkingConfiguration'] =
          semanticChunkingConfigurationValue.toMap();
    }
    return map;
  }

  factory AgentDataSourceVectorIngestionConfigurationChunkingConfiguration.fromMap(
      Map<String, dynamic> map) {
    return AgentDataSourceVectorIngestionConfigurationChunkingConfiguration(
      chunkingStrategy: map['chunkingStrategy'] as String,
      fixedSizeChunkingConfiguration: map['fixedSizeChunkingConfiguration'] ==
              null
          ? null
          : AgentDataSourceVectorIngestionConfigurationChunkingConfigurationFixedSizeChunkingConfiguration
              .fromMap((map['fixedSizeChunkingConfiguration'] as Map)
                  .cast<String, dynamic>()),
      hierarchicalChunkingConfiguration: map[
                  'hierarchicalChunkingConfiguration'] ==
              null
          ? null
          : AgentDataSourceVectorIngestionConfigurationChunkingConfigurationHierarchicalChunkingConfiguration
              .fromMap((map['hierarchicalChunkingConfiguration'] as Map)
                  .cast<String, dynamic>()),
      semanticChunkingConfiguration: map['semanticChunkingConfiguration'] ==
              null
          ? null
          : AgentDataSourceVectorIngestionConfigurationChunkingConfigurationSemanticChunkingConfiguration
              .fromMap((map['semanticChunkingConfiguration'] as Map)
                  .cast<String, dynamic>()),
    );
  }
}
