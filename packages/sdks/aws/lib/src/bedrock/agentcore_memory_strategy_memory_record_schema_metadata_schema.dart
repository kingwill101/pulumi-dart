// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'agentcore_memory_strategy_memory_record_schema_metadata_schema_extraction_config.dart';

class AgentcoreMemoryStrategyMemoryRecordSchemaMetadataSchema {
  /// Configuration for extracting this metadata value from conversational content. Applicable only when `extractionType` is `LLM_INFERRED`. See `extractionConfig` Block below.
  final pulumi.Input<AgentcoreMemoryStrategyMemoryRecordSchemaMetadataSchemaExtractionConfig?>? extractionConfig;
  /// Whether the metadata value is extracted by the LLM or passed through deterministically from the event. Valid values: `LLM_INFERRED`, `STRICTLY_CONSISTENT`.
  final pulumi.Input<String?>? extractionType;
  /// Metadata field name. Must match an indexed key to be queryable via metadata filters.
  final pulumi.Input<String> key;
  /// Metadata value type. Valid values: `STRING`, `STRINGLIST`, `NUMBER`.
  final pulumi.Input<String?>? type;

  /// Creates a new [AgentcoreMemoryStrategyMemoryRecordSchemaMetadataSchema].
  /// [extractionConfig] Configuration for extracting this metadata value from conversational content. Applicable only when `extractionType` is `LLM_INFERRED`. See `extractionConfig` Block below.
  /// [extractionType] Whether the metadata value is extracted by the LLM or passed through deterministically from the event. Valid values: `LLM_INFERRED`, `STRICTLY_CONSISTENT`.
  /// [key] Metadata field name. Must match an indexed key to be queryable via metadata filters.
  /// [type] Metadata value type. Valid values: `STRING`, `STRINGLIST`, `NUMBER`.
  const AgentcoreMemoryStrategyMemoryRecordSchemaMetadataSchema({
    this.extractionConfig,
    this.extractionType,
    required this.key,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'extractionConfig': ?pulumi.Input.mapOptionalInputValue<AgentcoreMemoryStrategyMemoryRecordSchemaMetadataSchemaExtractionConfig, Map<String, dynamic>>(extractionConfig, (value) => value.toMap()),
      'extractionType': ?extractionType,
      'key': key,
      'type': ?type,
    };
  }

  factory AgentcoreMemoryStrategyMemoryRecordSchemaMetadataSchema.fromMap(Map<String, dynamic> map) {
    return AgentcoreMemoryStrategyMemoryRecordSchemaMetadataSchema(
      extractionConfig: (() { final guardedValue = map['extractionConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AgentcoreMemoryStrategyMemoryRecordSchemaMetadataSchemaExtractionConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      extractionType: (() { final guardedValue = map['extractionType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      key: pulumi.Input.fromValue(map['key'] as String),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
