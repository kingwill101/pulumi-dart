// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AgentcoreMemoryStrategyMemoryRecordSchemaMetadataSchemaExtractionConfigLlmExtractionConfigValidationNumberValidation {
  /// Maximum allowed value.
  final pulumi.Input<double?>? maxValue;
  /// Minimum allowed value.
  final pulumi.Input<double?>? minValue;

  /// Creates a new [AgentcoreMemoryStrategyMemoryRecordSchemaMetadataSchemaExtractionConfigLlmExtractionConfigValidationNumberValidation].
  /// [maxValue] Maximum allowed value.
  /// [minValue] Minimum allowed value.
  const AgentcoreMemoryStrategyMemoryRecordSchemaMetadataSchemaExtractionConfigLlmExtractionConfigValidationNumberValidation({
    this.maxValue,
    this.minValue,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'maxValue': ?maxValue,
      'minValue': ?minValue,
    };
  }

  factory AgentcoreMemoryStrategyMemoryRecordSchemaMetadataSchemaExtractionConfigLlmExtractionConfigValidationNumberValidation.fromMap(Map<String, dynamic> map) {
    return AgentcoreMemoryStrategyMemoryRecordSchemaMetadataSchemaExtractionConfigLlmExtractionConfigValidationNumberValidation(
      maxValue: (() { final guardedValue = map['maxValue']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toDouble()); })(),
      minValue: (() { final guardedValue = map['minValue']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toDouble()); })(),
    );
  }
}
