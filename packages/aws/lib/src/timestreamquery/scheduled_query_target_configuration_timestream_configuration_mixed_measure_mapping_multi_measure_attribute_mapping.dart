// ignore_for_file: unused_element, unnecessary_cast

class ScheduledQueryTargetConfigurationTimestreamConfigurationMixedMeasureMappingMultiMeasureAttributeMapping {
  /// Type of the attribute to be read from the source column. Valid values are `BIGINT`, `BOOLEAN`, `DOUBLE`, `VARCHAR`, `TIMESTAMP`.
  final String measureValueType;

  /// Source column from where the attribute value is to be read.
  final String sourceColumn;

  /// Custom name to be used for attribute name in derived table. If not provided, `source_column` is used.
  final String? targetMultiMeasureAttributeName;

  /// Creates a new [ScheduledQueryTargetConfigurationTimestreamConfigurationMixedMeasureMappingMultiMeasureAttributeMapping].
  /// [measureValueType] Type of the attribute to be read from the source column. Valid values are `BIGINT`, `BOOLEAN`, `DOUBLE`, `VARCHAR`, `TIMESTAMP`.
  /// [sourceColumn] Source column from where the attribute value is to be read.
  /// [targetMultiMeasureAttributeName] Custom name to be used for attribute name in derived table. If not provided, `source_column` is used.
  ScheduledQueryTargetConfigurationTimestreamConfigurationMixedMeasureMappingMultiMeasureAttributeMapping({
    required this.measureValueType,
    required this.sourceColumn,
    this.targetMultiMeasureAttributeName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'measureValueType': measureValueType,
      'sourceColumn': sourceColumn,
      'targetMultiMeasureAttributeName': ?targetMultiMeasureAttributeName,
    };
  }

  factory ScheduledQueryTargetConfigurationTimestreamConfigurationMixedMeasureMappingMultiMeasureAttributeMapping.fromMap(
    Map<String, dynamic> map,
  ) {
    return ScheduledQueryTargetConfigurationTimestreamConfigurationMixedMeasureMappingMultiMeasureAttributeMapping(
      measureValueType: map['measureValueType'] as String,
      sourceColumn: map['sourceColumn'] as String,
      targetMultiMeasureAttributeName:
          map['targetMultiMeasureAttributeName'] == null
          ? null
          : map['targetMultiMeasureAttributeName'] as String,
    );
  }
}
