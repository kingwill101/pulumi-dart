// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'agentcore_memory_strategy_configuration_consolidation.dart';
import 'agentcore_memory_strategy_configuration_extraction.dart';
import 'agentcore_memory_strategy_configuration_reflection.dart';

class AgentcoreMemoryStrategyConfiguration {
  /// Consolidation configuration for the memory strategy. See `consolidation` Block below. Once added, this block cannot be removed without recreating the resource.
  final pulumi.Input<AgentcoreMemoryStrategyConfigurationConsolidation>? consolidation;
  /// Extraction configuration for the memory strategy. See `extraction` Block below. Cannot be used with `type` set to `SUMMARY_OVERRIDE`. Once added, this block cannot be removed without recreating the resource.
  final pulumi.Input<AgentcoreMemoryStrategyConfigurationExtraction>? extraction;
  /// Reflection configuration for the memory strategy. See `reflection` Block below. Can only be used, and is required, with `type` set to `EPISODIC_OVERRIDE`. Once added, this block cannot be removed without recreating the resource.
  final pulumi.Input<AgentcoreMemoryStrategyConfigurationReflection>? reflection;
  /// Type of custom override. Valid values: `SEMANTIC_OVERRIDE`, `SUMMARY_OVERRIDE`, `USER_PREFERENCE_OVERRIDE`, `EPISODIC_OVERRIDE`. Changing this forces a new resource.
  final pulumi.Input<String> type;

  /// Creates a new [AgentcoreMemoryStrategyConfiguration].
  /// [consolidation] Consolidation configuration for the memory strategy. See `consolidation` Block below. Once added, this block cannot be removed without recreating the resource.
  /// [extraction] Extraction configuration for the memory strategy. See `extraction` Block below. Cannot be used with `type` set to `SUMMARY_OVERRIDE`. Once added, this block cannot be removed without recreating the resource.
  /// [reflection] Reflection configuration for the memory strategy. See `reflection` Block below. Can only be used, and is required, with `type` set to `EPISODIC_OVERRIDE`. Once added, this block cannot be removed without recreating the resource.
  /// [type] Type of custom override. Valid values: `SEMANTIC_OVERRIDE`, `SUMMARY_OVERRIDE`, `USER_PREFERENCE_OVERRIDE`, `EPISODIC_OVERRIDE`. Changing this forces a new resource.
  const AgentcoreMemoryStrategyConfiguration({
    this.consolidation,
    this.extraction,
    this.reflection,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'consolidation': ?pulumi.Input.mapOptionalInputValue<AgentcoreMemoryStrategyConfigurationConsolidation, Map<String, dynamic>>(consolidation, (value) => value.toMap()),
      'extraction': ?pulumi.Input.mapOptionalInputValue<AgentcoreMemoryStrategyConfigurationExtraction, Map<String, dynamic>>(extraction, (value) => value.toMap()),
      'reflection': ?pulumi.Input.mapOptionalInputValue<AgentcoreMemoryStrategyConfigurationReflection, Map<String, dynamic>>(reflection, (value) => value.toMap()),
      'type': type,
    };
  }

  factory AgentcoreMemoryStrategyConfiguration.fromMap(Map<String, dynamic> map) {
    return AgentcoreMemoryStrategyConfiguration(
      consolidation: (() { final guardedValue = map['consolidation']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AgentcoreMemoryStrategyConfigurationConsolidation.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      extraction: (() { final guardedValue = map['extraction']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AgentcoreMemoryStrategyConfigurationExtraction.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      reflection: (() { final guardedValue = map['reflection']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AgentcoreMemoryStrategyConfigurationReflection.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}
