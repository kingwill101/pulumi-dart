// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'agentcore_memory_strategy_memory_record_schema_metadata_schema_extraction_config_llm_extraction_config.dart';

class AgentcoreMemoryStrategyMemoryRecordSchemaMetadataSchemaExtractionConfig {
  /// Model-based extraction configuration. See `llmExtractionConfig` Block below.
  final pulumi.Input<AgentcoreMemoryStrategyMemoryRecordSchemaMetadataSchemaExtractionConfigLlmExtractionConfig?>? llmExtractionConfig;

  /// Creates a new [AgentcoreMemoryStrategyMemoryRecordSchemaMetadataSchemaExtractionConfig].
  /// [llmExtractionConfig] Model-based extraction configuration. See `llmExtractionConfig` Block below.
  const AgentcoreMemoryStrategyMemoryRecordSchemaMetadataSchemaExtractionConfig({
    this.llmExtractionConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'llmExtractionConfig': ?pulumi.Input.mapOptionalInputValue<AgentcoreMemoryStrategyMemoryRecordSchemaMetadataSchemaExtractionConfigLlmExtractionConfig, Map<String, dynamic>>(llmExtractionConfig, (value) => value.toMap()),
    };
  }

  factory AgentcoreMemoryStrategyMemoryRecordSchemaMetadataSchemaExtractionConfig.fromMap(Map<String, dynamic> map) {
    return AgentcoreMemoryStrategyMemoryRecordSchemaMetadataSchemaExtractionConfig(
      llmExtractionConfig: (() { final guardedValue = map['llmExtractionConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AgentcoreMemoryStrategyMemoryRecordSchemaMetadataSchemaExtractionConfigLlmExtractionConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
