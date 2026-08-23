// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ScheduledQueryTargetConfigurationTimestreamConfigurationMultiMeasureMappingsMultiMeasureAttributeMapping {
  /// Type of the attribute to be read from the source column. Valid values are `BIGINT`, `BOOLEAN`, `DOUBLE`, `VARCHAR`, `TIMESTAMP`.
  final pulumi.Input<String> measureValueType;
  /// Source column from where the attribute value is to be read.
  final pulumi.Input<String> sourceColumn;
  /// Custom name to be used for attribute name in derived table. If not provided, `sourceColumn` is used.
  final pulumi.Input<String>? targetMultiMeasureAttributeName;

  /// Creates a new [ScheduledQueryTargetConfigurationTimestreamConfigurationMultiMeasureMappingsMultiMeasureAttributeMapping].
  /// [measureValueType] Type of the attribute to be read from the source column. Valid values are `BIGINT`, `BOOLEAN`, `DOUBLE`, `VARCHAR`, `TIMESTAMP`.
  /// [sourceColumn] Source column from where the attribute value is to be read.
  /// [targetMultiMeasureAttributeName] Custom name to be used for attribute name in derived table. If not provided, `sourceColumn` is used.
  const ScheduledQueryTargetConfigurationTimestreamConfigurationMultiMeasureMappingsMultiMeasureAttributeMapping({
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

  factory ScheduledQueryTargetConfigurationTimestreamConfigurationMultiMeasureMappingsMultiMeasureAttributeMapping.fromMap(Map<String, dynamic> map) {
    return ScheduledQueryTargetConfigurationTimestreamConfigurationMultiMeasureMappingsMultiMeasureAttributeMapping(
      measureValueType: pulumi.Input.fromValue(map['measureValueType'] as String),
      sourceColumn: pulumi.Input.fromValue(map['sourceColumn'] as String),
      targetMultiMeasureAttributeName: (() { final guardedValue = map['targetMultiMeasureAttributeName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
