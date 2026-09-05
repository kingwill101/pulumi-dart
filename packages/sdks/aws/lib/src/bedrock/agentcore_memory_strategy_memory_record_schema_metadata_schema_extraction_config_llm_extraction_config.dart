// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'agentcore_memory_strategy_memory_record_schema_metadata_schema_extraction_config_llm_extraction_config_validation.dart';

class AgentcoreMemoryStrategyMemoryRecordSchemaMetadataSchemaExtractionConfigLlmExtractionConfig {
  /// Description of what this metadata field represents.
  final pulumi.Input<String> definition;
  /// Instructions for extraction. Supports built-in operators like `LATEST_VALUE` or custom natural-language instructions.
  final pulumi.Input<String?>? llmExtractionInstruction;
  /// Validation rules to constrain extracted values. See `validation` Block below.
  final pulumi.Input<AgentcoreMemoryStrategyMemoryRecordSchemaMetadataSchemaExtractionConfigLlmExtractionConfigValidation?>? validation;

  /// Creates a new [AgentcoreMemoryStrategyMemoryRecordSchemaMetadataSchemaExtractionConfigLlmExtractionConfig].
  /// [definition] Description of what this metadata field represents.
  /// [llmExtractionInstruction] Instructions for extraction. Supports built-in operators like `LATEST_VALUE` or custom natural-language instructions.
  /// [validation] Validation rules to constrain extracted values. See `validation` Block below.
  const AgentcoreMemoryStrategyMemoryRecordSchemaMetadataSchemaExtractionConfigLlmExtractionConfig({
    required this.definition,
    this.llmExtractionInstruction,
    this.validation,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'definition': definition,
      'llmExtractionInstruction': ?llmExtractionInstruction,
      'validation': ?pulumi.Input.mapOptionalInputValue<AgentcoreMemoryStrategyMemoryRecordSchemaMetadataSchemaExtractionConfigLlmExtractionConfigValidation, Map<String, dynamic>>(validation, (value) => value.toMap()),
    };
  }

  factory AgentcoreMemoryStrategyMemoryRecordSchemaMetadataSchemaExtractionConfigLlmExtractionConfig.fromMap(Map<String, dynamic> map) {
    return AgentcoreMemoryStrategyMemoryRecordSchemaMetadataSchemaExtractionConfigLlmExtractionConfig(
      definition: pulumi.Input.fromValue(map['definition'] as String),
      llmExtractionInstruction: (() { final guardedValue = map['llmExtractionInstruction']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      validation: (() { final guardedValue = map['validation']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AgentcoreMemoryStrategyMemoryRecordSchemaMetadataSchemaExtractionConfigLlmExtractionConfigValidation.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
