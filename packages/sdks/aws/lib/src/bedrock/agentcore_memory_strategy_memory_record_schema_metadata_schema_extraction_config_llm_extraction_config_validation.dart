// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'agentcore_memory_strategy_memory_record_schema_metadata_schema_extraction_config_llm_extraction_config_validation_number_validation.dart';
import 'agentcore_memory_strategy_memory_record_schema_metadata_schema_extraction_config_llm_extraction_config_validation_string_list_validation.dart';
import 'agentcore_memory_strategy_memory_record_schema_metadata_schema_extraction_config_llm_extraction_config_validation_string_validation.dart';

class AgentcoreMemoryStrategyMemoryRecordSchemaMetadataSchemaExtractionConfigLlmExtractionConfigValidation {
  /// Validation for `NUMBER` fields. See `numberValidation` Block below.
  final pulumi.Input<AgentcoreMemoryStrategyMemoryRecordSchemaMetadataSchemaExtractionConfigLlmExtractionConfigValidationNumberValidation?>? numberValidation;
  /// Validation for `STRINGLIST` fields. See `stringListValidation` Block below.
  final pulumi.Input<AgentcoreMemoryStrategyMemoryRecordSchemaMetadataSchemaExtractionConfigLlmExtractionConfigValidationStringListValidation?>? stringListValidation;
  /// Validation for `STRING` fields. See `stringValidation` Block below.
  final pulumi.Input<AgentcoreMemoryStrategyMemoryRecordSchemaMetadataSchemaExtractionConfigLlmExtractionConfigValidationStringValidation?>? stringValidation;

  /// Creates a new [AgentcoreMemoryStrategyMemoryRecordSchemaMetadataSchemaExtractionConfigLlmExtractionConfigValidation].
  /// [numberValidation] Validation for `NUMBER` fields. See `numberValidation` Block below.
  /// [stringListValidation] Validation for `STRINGLIST` fields. See `stringListValidation` Block below.
  /// [stringValidation] Validation for `STRING` fields. See `stringValidation` Block below.
  const AgentcoreMemoryStrategyMemoryRecordSchemaMetadataSchemaExtractionConfigLlmExtractionConfigValidation({
    this.numberValidation,
    this.stringListValidation,
    this.stringValidation,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'numberValidation': ?pulumi.Input.mapOptionalInputValue<AgentcoreMemoryStrategyMemoryRecordSchemaMetadataSchemaExtractionConfigLlmExtractionConfigValidationNumberValidation, Map<String, dynamic>>(numberValidation, (value) => value.toMap()),
      'stringListValidation': ?pulumi.Input.mapOptionalInputValue<AgentcoreMemoryStrategyMemoryRecordSchemaMetadataSchemaExtractionConfigLlmExtractionConfigValidationStringListValidation, Map<String, dynamic>>(stringListValidation, (value) => value.toMap()),
      'stringValidation': ?pulumi.Input.mapOptionalInputValue<AgentcoreMemoryStrategyMemoryRecordSchemaMetadataSchemaExtractionConfigLlmExtractionConfigValidationStringValidation, Map<String, dynamic>>(stringValidation, (value) => value.toMap()),
    };
  }

  factory AgentcoreMemoryStrategyMemoryRecordSchemaMetadataSchemaExtractionConfigLlmExtractionConfigValidation.fromMap(Map<String, dynamic> map) {
    return AgentcoreMemoryStrategyMemoryRecordSchemaMetadataSchemaExtractionConfigLlmExtractionConfigValidation(
      numberValidation: (() { final guardedValue = map['numberValidation']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AgentcoreMemoryStrategyMemoryRecordSchemaMetadataSchemaExtractionConfigLlmExtractionConfigValidationNumberValidation.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      stringListValidation: (() { final guardedValue = map['stringListValidation']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AgentcoreMemoryStrategyMemoryRecordSchemaMetadataSchemaExtractionConfigLlmExtractionConfigValidationStringListValidation.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      stringValidation: (() { final guardedValue = map['stringValidation']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AgentcoreMemoryStrategyMemoryRecordSchemaMetadataSchemaExtractionConfigLlmExtractionConfigValidationStringValidation.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
