// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'agent_data_source_vector_ingestion_configuration_chunking_configuration_fixed_size_chunking_configuration.dart';
import 'agent_data_source_vector_ingestion_configuration_chunking_configuration_hierarchical_chunking_configuration.dart';
import 'agent_data_source_vector_ingestion_configuration_chunking_configuration_semantic_chunking_configuration.dart';

class AgentDataSourceVectorIngestionConfigurationChunkingConfiguration {
  /// Option for chunking your source data, either in fixed-sized chunks or as one chunk. Valid values: `FIXED_SIZE`, `HIERARCHICAL`, `SEMANTIC`, `NONE`.
  final pulumi.Input<String> chunkingStrategy;
  /// Configurations for when you choose fixed-size chunking. Requires chunkingStrategy as `FIXED_SIZE`. See `fixedSizeChunkingConfiguration` for details.
  final pulumi.Input<AgentDataSourceVectorIngestionConfigurationChunkingConfigurationFixedSizeChunkingConfiguration?>? fixedSizeChunkingConfiguration;
  /// Configurations for when you choose hierarchical chunking. Requires chunkingStrategy as `HIERARCHICAL`. See `hierarchicalChunkingConfiguration` for details.
  final pulumi.Input<AgentDataSourceVectorIngestionConfigurationChunkingConfigurationHierarchicalChunkingConfiguration?>? hierarchicalChunkingConfiguration;
  /// Configurations for when you choose semantic chunking. Requires chunkingStrategy as `SEMANTIC`. See `semanticChunkingConfiguration` for details.
  final pulumi.Input<AgentDataSourceVectorIngestionConfigurationChunkingConfigurationSemanticChunkingConfiguration?>? semanticChunkingConfiguration;

  /// Creates a new [AgentDataSourceVectorIngestionConfigurationChunkingConfiguration].
  /// [chunkingStrategy] Option for chunking your source data, either in fixed-sized chunks or as one chunk. Valid values: `FIXED_SIZE`, `HIERARCHICAL`, `SEMANTIC`, `NONE`.
  /// [fixedSizeChunkingConfiguration] Configurations for when you choose fixed-size chunking. Requires chunkingStrategy as `FIXED_SIZE`. See `fixedSizeChunkingConfiguration` for details.
  /// [hierarchicalChunkingConfiguration] Configurations for when you choose hierarchical chunking. Requires chunkingStrategy as `HIERARCHICAL`. See `hierarchicalChunkingConfiguration` for details.
  /// [semanticChunkingConfiguration] Configurations for when you choose semantic chunking. Requires chunkingStrategy as `SEMANTIC`. See `semanticChunkingConfiguration` for details.
  const AgentDataSourceVectorIngestionConfigurationChunkingConfiguration({
    required this.chunkingStrategy,
    this.fixedSizeChunkingConfiguration,
    this.hierarchicalChunkingConfiguration,
    this.semanticChunkingConfiguration,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'chunkingStrategy': chunkingStrategy,
      'fixedSizeChunkingConfiguration': ?pulumi.Input.mapOptionalInputValue<AgentDataSourceVectorIngestionConfigurationChunkingConfigurationFixedSizeChunkingConfiguration, Map<String, dynamic>>(fixedSizeChunkingConfiguration, (value) => value.toMap()),
      'hierarchicalChunkingConfiguration': ?pulumi.Input.mapOptionalInputValue<AgentDataSourceVectorIngestionConfigurationChunkingConfigurationHierarchicalChunkingConfiguration, Map<String, dynamic>>(hierarchicalChunkingConfiguration, (value) => value.toMap()),
      'semanticChunkingConfiguration': ?pulumi.Input.mapOptionalInputValue<AgentDataSourceVectorIngestionConfigurationChunkingConfigurationSemanticChunkingConfiguration, Map<String, dynamic>>(semanticChunkingConfiguration, (value) => value.toMap()),
    };
  }

  factory AgentDataSourceVectorIngestionConfigurationChunkingConfiguration.fromMap(Map<String, dynamic> map) {
    return AgentDataSourceVectorIngestionConfigurationChunkingConfiguration(
      chunkingStrategy: pulumi.Input.fromValue(map['chunkingStrategy'] as String),
      fixedSizeChunkingConfiguration: (() { final guardedValue = map['fixedSizeChunkingConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AgentDataSourceVectorIngestionConfigurationChunkingConfigurationFixedSizeChunkingConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      hierarchicalChunkingConfiguration: (() { final guardedValue = map['hierarchicalChunkingConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AgentDataSourceVectorIngestionConfigurationChunkingConfigurationHierarchicalChunkingConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      semanticChunkingConfiguration: (() { final guardedValue = map['semanticChunkingConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AgentDataSourceVectorIngestionConfigurationChunkingConfigurationSemanticChunkingConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
