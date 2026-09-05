// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'agent_data_source_vector_ingestion_configuration_chunking_configuration_hierarchical_chunking_configuration_level_configuration.dart';

class AgentDataSourceVectorIngestionConfigurationChunkingConfigurationHierarchicalChunkingConfiguration {
  /// Maximum number of tokens to include in a chunk. Must contain two `levelConfigurations`. See `levelConfigurations` for details.
  final pulumi.Input<List<AgentDataSourceVectorIngestionConfigurationChunkingConfigurationHierarchicalChunkingConfigurationLevelConfiguration>?>? levelConfigurations;
  /// The number of tokens to repeat across chunks in the same layer.
  final pulumi.Input<int> overlapTokens;

  /// Creates a new [AgentDataSourceVectorIngestionConfigurationChunkingConfigurationHierarchicalChunkingConfiguration].
  /// [levelConfigurations] Maximum number of tokens to include in a chunk. Must contain two `levelConfigurations`. See `levelConfigurations` for details.
  /// [overlapTokens] The number of tokens to repeat across chunks in the same layer.
  const AgentDataSourceVectorIngestionConfigurationChunkingConfigurationHierarchicalChunkingConfiguration({
    this.levelConfigurations,
    required this.overlapTokens,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'levelConfigurations': ?pulumi.Input.mapOptionalInputValue<List<AgentDataSourceVectorIngestionConfigurationChunkingConfigurationHierarchicalChunkingConfigurationLevelConfiguration>, List<Map<String, dynamic>>>(levelConfigurations, (value) => pulumi.Input.encodeList<AgentDataSourceVectorIngestionConfigurationChunkingConfigurationHierarchicalChunkingConfigurationLevelConfiguration, Map<String, dynamic>>(value, (value) => value.toMap())),
      'overlapTokens': overlapTokens,
    };
  }

  factory AgentDataSourceVectorIngestionConfigurationChunkingConfigurationHierarchicalChunkingConfiguration.fromMap(Map<String, dynamic> map) {
    return AgentDataSourceVectorIngestionConfigurationChunkingConfigurationHierarchicalChunkingConfiguration(
      levelConfigurations: (() { final guardedValue = map['levelConfigurations']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<AgentDataSourceVectorIngestionConfigurationChunkingConfigurationHierarchicalChunkingConfigurationLevelConfiguration>(guardedValue, (value) => AgentDataSourceVectorIngestionConfigurationChunkingConfigurationHierarchicalChunkingConfigurationLevelConfiguration.fromMap((value as Map).cast<String, dynamic>()))); })(),
      overlapTokens: pulumi.Input.fromValue((map['overlapTokens'] as num).toInt()),
    );
  }
}
