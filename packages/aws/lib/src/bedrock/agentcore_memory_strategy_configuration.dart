// ignore_for_file: unused_element, unnecessary_cast

import 'agentcore_memory_strategy_configuration_consolidation.dart';
import 'agentcore_memory_strategy_configuration_extraction.dart';

class AgentcoreMemoryStrategyConfiguration {
  /// Consolidation configuration for processing and organizing memory content. See `consolidation` below. Once added, this block cannot be removed without recreating the resource.
  final AgentcoreMemoryStrategyConfigurationConsolidation? consolidation;

  /// Extraction configuration for identifying and extracting relevant information. See `extraction` below. Cannot be used with `type` set to `SUMMARY_OVERRIDE`. Once added, this block cannot be removed without recreating the resource.
  final AgentcoreMemoryStrategyConfigurationExtraction? extraction;

  /// Type of custom override. Valid values: `SEMANTIC_OVERRIDE`, `SUMMARY_OVERRIDE`, `USER_PREFERENCE_OVERRIDE`. Changing this forces a new resource.
  final String type;

  /// Creates a new [AgentcoreMemoryStrategyConfiguration].
  /// [consolidation] Consolidation configuration for processing and organizing memory content. See `consolidation` below. Once added, this block cannot be removed without recreating the resource.
  /// [extraction] Extraction configuration for identifying and extracting relevant information. See `extraction` below. Cannot be used with `type` set to `SUMMARY_OVERRIDE`. Once added, this block cannot be removed without recreating the resource.
  /// [type] Type of custom override. Valid values: `SEMANTIC_OVERRIDE`, `SUMMARY_OVERRIDE`, `USER_PREFERENCE_OVERRIDE`. Changing this forces a new resource.
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
