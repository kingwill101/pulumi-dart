// ignore_for_file: unused_element, unnecessary_cast

import '../agent_data_source_vector_ingestion_configuration_chunking_configuration_fixed_size_chunking_configuration/agent_data_source_vector_ingestion_configuration_chunking_configuration_fixed_size_chunking_configuration.dart';
import '../agent_data_source_vector_ingestion_configuration_chunking_configuration_hierarchical_chunking_configuration/agent_data_source_vector_ingestion_configuration_chunking_configuration_hierarchical_chunking_configuration.dart';
import '../agent_data_source_vector_ingestion_configuration_chunking_configuration_semantic_chunking_configuration/agent_data_source_vector_ingestion_configuration_chunking_configuration_semantic_chunking_configuration.dart';

class AgentDataSourceVectorIngestionConfigurationChunkingConfiguration {
  /// Option for chunking your source data, either in fixed-sized chunks or as one chunk. Valid values: `FIXED_SIZE`, `HIERARCHICAL`, `SEMANTIC`, `NONE`.
  final String chunkingStrategy;

  /// Configurations for when you choose fixed-size chunking. Requires<span pulumi-lang-nodejs=" chunkingStrategy " pulumi-lang-dotnet=" ChunkingStrategy " pulumi-lang-go=" chunkingStrategy " pulumi-lang-python=" chunking_strategy " pulumi-lang-yaml=" chunkingStrategy " pulumi-lang-java=" chunkingStrategy "> chunking_strategy </span>as `FIXED_SIZE`. See <span pulumi-lang-nodejs="`fixedSizeChunkingConfiguration`" pulumi-lang-dotnet="`FixedSizeChunkingConfiguration`" pulumi-lang-go="`fixedSizeChunkingConfiguration`" pulumi-lang-python="`fixed_size_chunking_configuration`" pulumi-lang-yaml="`fixedSizeChunkingConfiguration`" pulumi-lang-java="`fixedSizeChunkingConfiguration`">`fixed_size_chunking_configuration`</span> for details.
  final AgentDataSourceVectorIngestionConfigurationChunkingConfigurationFixedSizeChunkingConfiguration?
      fixedSizeChunkingConfiguration;

  /// Configurations for when you choose hierarchical chunking. Requires<span pulumi-lang-nodejs=" chunkingStrategy " pulumi-lang-dotnet=" ChunkingStrategy " pulumi-lang-go=" chunkingStrategy " pulumi-lang-python=" chunking_strategy " pulumi-lang-yaml=" chunkingStrategy " pulumi-lang-java=" chunkingStrategy "> chunking_strategy </span>as `HIERARCHICAL`. See <span pulumi-lang-nodejs="`hierarchicalChunkingConfiguration`" pulumi-lang-dotnet="`HierarchicalChunkingConfiguration`" pulumi-lang-go="`hierarchicalChunkingConfiguration`" pulumi-lang-python="`hierarchical_chunking_configuration`" pulumi-lang-yaml="`hierarchicalChunkingConfiguration`" pulumi-lang-java="`hierarchicalChunkingConfiguration`">`hierarchical_chunking_configuration`</span> for details.
  final AgentDataSourceVectorIngestionConfigurationChunkingConfigurationHierarchicalChunkingConfiguration?
      hierarchicalChunkingConfiguration;

  /// Configurations for when you choose semantic chunking. Requires<span pulumi-lang-nodejs=" chunkingStrategy " pulumi-lang-dotnet=" ChunkingStrategy " pulumi-lang-go=" chunkingStrategy " pulumi-lang-python=" chunking_strategy " pulumi-lang-yaml=" chunkingStrategy " pulumi-lang-java=" chunkingStrategy "> chunking_strategy </span>as `SEMANTIC`. See <span pulumi-lang-nodejs="`semanticChunkingConfiguration`" pulumi-lang-dotnet="`SemanticChunkingConfiguration`" pulumi-lang-go="`semanticChunkingConfiguration`" pulumi-lang-python="`semantic_chunking_configuration`" pulumi-lang-yaml="`semanticChunkingConfiguration`" pulumi-lang-java="`semanticChunkingConfiguration`">`semantic_chunking_configuration`</span> for details.
  final AgentDataSourceVectorIngestionConfigurationChunkingConfigurationSemanticChunkingConfiguration?
      semanticChunkingConfiguration;

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
