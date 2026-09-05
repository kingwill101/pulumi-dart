// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AgentcoreMemoryStrategyMemoryRecordSchemaMetadataSchemaExtractionConfigLlmExtractionConfigValidationStringValidation {
  /// Allowed values for this `STRING` field.
  final pulumi.Input<List<String>> allowedValues;

  /// Creates a new [AgentcoreMemoryStrategyMemoryRecordSchemaMetadataSchemaExtractionConfigLlmExtractionConfigValidationStringValidation].
  /// [allowedValues] Allowed values for this `STRING` field.
  const AgentcoreMemoryStrategyMemoryRecordSchemaMetadataSchemaExtractionConfigLlmExtractionConfigValidationStringValidation({
    required this.allowedValues,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowedValues': allowedValues,
    };
  }

  factory AgentcoreMemoryStrategyMemoryRecordSchemaMetadataSchemaExtractionConfigLlmExtractionConfigValidationStringValidation.fromMap(Map<String, dynamic> map) {
    return AgentcoreMemoryStrategyMemoryRecordSchemaMetadataSchemaExtractionConfigLlmExtractionConfigValidationStringValidation(
      allowedValues: pulumi.Input.fromValue((map['allowedValues'] as List).cast<String>()),
    );
  }
}
