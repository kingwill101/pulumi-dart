// ignore_for_file: unused_element, unnecessary_cast

class ScheduledQueryTargetConfigurationTimestreamConfigurationMixedMeasureMappingMultiMeasureAttributeMapping {
  /// Type of the attribute to be read from the source column. Valid values are `BIGINT`, `BOOLEAN`, `DOUBLE`, `VARCHAR`, `TIMESTAMP`.
  final String measureValueType;

  /// Source column from where the attribute value is to be read.
  final String sourceColumn;

  /// Custom name to be used for attribute name in derived table. If not provided, `source_column` is used.
  final String? targetMultiMeasureAttributeName;

  ScheduledQueryTargetConfigurationTimestreamConfigurationMixedMeasureMappingMultiMeasureAttributeMapping({
    required this.measureValueType,
    required this.sourceColumn,
    this.targetMultiMeasureAttributeName,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['measureValueType'] = measureValueType;
    map['sourceColumn'] = sourceColumn;
    final targetMultiMeasureAttributeNameValue =
        targetMultiMeasureAttributeName;
    if (targetMultiMeasureAttributeNameValue != null) {
      map['targetMultiMeasureAttributeName'] =
          targetMultiMeasureAttributeNameValue;
    }
    return map;
  }

  factory ScheduledQueryTargetConfigurationTimestreamConfigurationMixedMeasureMappingMultiMeasureAttributeMapping.fromMap(
      Map<String, dynamic> map) {
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
