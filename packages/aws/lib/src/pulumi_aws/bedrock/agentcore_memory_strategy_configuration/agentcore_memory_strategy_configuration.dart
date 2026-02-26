// ignore_for_file: unused_element, unnecessary_cast

import '../agentcore_memory_strategy_configuration_consolidation/agentcore_memory_strategy_configuration_consolidation.dart';
import '../agentcore_memory_strategy_configuration_extraction/agentcore_memory_strategy_configuration_extraction.dart';

class AgentcoreMemoryStrategyConfiguration {
  /// Consolidation configuration for processing and organizing memory content. See <span pulumi-lang-nodejs="`consolidation`" pulumi-lang-dotnet="`Consolidation`" pulumi-lang-go="`consolidation`" pulumi-lang-python="`consolidation`" pulumi-lang-yaml="`consolidation`" pulumi-lang-java="`consolidation`">`consolidation`</span> below. Once added, this block cannot be removed without recreating the resource.
  final AgentcoreMemoryStrategyConfigurationConsolidation? consolidation;

  /// Extraction configuration for identifying and extracting relevant information. See <span pulumi-lang-nodejs="`extraction`" pulumi-lang-dotnet="`Extraction`" pulumi-lang-go="`extraction`" pulumi-lang-python="`extraction`" pulumi-lang-yaml="`extraction`" pulumi-lang-java="`extraction`">`extraction`</span> below. Cannot be used with <span pulumi-lang-nodejs="`type`" pulumi-lang-dotnet="`Type`" pulumi-lang-go="`type`" pulumi-lang-python="`type`" pulumi-lang-yaml="`type`" pulumi-lang-java="`type`">`type`</span> set to `SUMMARY_OVERRIDE`. Once added, this block cannot be removed without recreating the resource.
  final AgentcoreMemoryStrategyConfigurationExtraction? extraction;

  /// Type of custom override. Valid values: `SEMANTIC_OVERRIDE`, `SUMMARY_OVERRIDE`, `USER_PREFERENCE_OVERRIDE`. Changing this forces a new resource.
  final String type;

  AgentcoreMemoryStrategyConfiguration({
    this.consolidation,
    this.extraction,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final consolidationValue = consolidation;
    if (consolidationValue != null) {
      map['consolidation'] = consolidationValue.toMap();
    }
    final extractionValue = extraction;
    if (extractionValue != null) {
      map['extraction'] = extractionValue.toMap();
    }
    map['type'] = type;
    return map;
  }

  factory AgentcoreMemoryStrategyConfiguration.fromMap(
      Map<String, dynamic> map) {
    return AgentcoreMemoryStrategyConfiguration(
      consolidation: map['consolidation'] == null
          ? null
          : AgentcoreMemoryStrategyConfigurationConsolidation.fromMap(
              (map['consolidation'] as Map).cast<String, dynamic>()),
      extraction: map['extraction'] == null
          ? null
          : AgentcoreMemoryStrategyConfigurationExtraction.fromMap(
              (map['extraction'] as Map).cast<String, dynamic>()),
      type: map['type'] as String,
    );
  }
}
