// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../agent_data_source_vector_ingestion_configuration_chunking_configuration_hierarchical_chunking_configuration_level_configuration/agent_data_source_vector_ingestion_configuration_chunking_configuration_hierarchical_chunking_configuration_level_configuration.dart';

class AgentDataSourceVectorIngestionConfigurationChunkingConfigurationHierarchicalChunkingConfiguration {
  /// Maximum number of tokens to include in a chunk. Must contain two <span pulumi-lang-nodejs="`levelConfigurations`" pulumi-lang-dotnet="`LevelConfigurations`" pulumi-lang-go="`levelConfigurations`" pulumi-lang-python="`level_configurations`" pulumi-lang-yaml="`levelConfigurations`" pulumi-lang-java="`levelConfigurations`">`level_configurations`</span>. See <span pulumi-lang-nodejs="`levelConfigurations`" pulumi-lang-dotnet="`LevelConfigurations`" pulumi-lang-go="`levelConfigurations`" pulumi-lang-python="`level_configurations`" pulumi-lang-yaml="`levelConfigurations`" pulumi-lang-java="`levelConfigurations`">`level_configurations`</span> for details.
  final List<
          AgentDataSourceVectorIngestionConfigurationChunkingConfigurationHierarchicalChunkingConfigurationLevelConfiguration>?
      levelConfigurations;

  /// The number of tokens to repeat across chunks in the same layer.
  final int overlapTokens;

  AgentDataSourceVectorIngestionConfigurationChunkingConfigurationHierarchicalChunkingConfiguration({
    this.levelConfigurations,
    required this.overlapTokens,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final levelConfigurationsValue = levelConfigurations;
    if (levelConfigurationsValue != null) {
      map['levelConfigurations'] = Input.encodeList<
          AgentDataSourceVectorIngestionConfigurationChunkingConfigurationHierarchicalChunkingConfigurationLevelConfiguration,
          Map<String,
              dynamic>>(levelConfigurationsValue, (value) => value.toMap());
    }
    map['overlapTokens'] = overlapTokens;
    return map;
  }

  factory AgentDataSourceVectorIngestionConfigurationChunkingConfigurationHierarchicalChunkingConfiguration.fromMap(
      Map<String, dynamic> map) {
    return AgentDataSourceVectorIngestionConfigurationChunkingConfigurationHierarchicalChunkingConfiguration(
      levelConfigurations: map['levelConfigurations'] == null
          ? null
          : Input.decodeList<
                  AgentDataSourceVectorIngestionConfigurationChunkingConfigurationHierarchicalChunkingConfigurationLevelConfiguration>(
              map['levelConfigurations'],
              (value) =>
                  AgentDataSourceVectorIngestionConfigurationChunkingConfigurationHierarchicalChunkingConfigurationLevelConfiguration
                      .fromMap((value as Map).cast<String, dynamic>())),
      overlapTokens: map['overlapTokens'] as int,
    );
  }
}
