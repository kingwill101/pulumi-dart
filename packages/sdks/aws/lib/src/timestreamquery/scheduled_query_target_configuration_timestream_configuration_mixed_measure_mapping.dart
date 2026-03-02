// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'scheduled_query_target_configuration_timestream_configuration_mixed_measure_mapping_multi_measure_attribute_mapping.dart';

class ScheduledQueryTargetConfigurationTimestreamConfigurationMixedMeasureMapping {
  /// Refers to the value of measure_name in a result row. This field is required if `measure_name_column` is provided.
  final pulumi.Input<String>? measureName;
  /// Type of the value that is to be read from `source_column`. Valid values are `BIGINT`, `BOOLEAN`, `DOUBLE`, `VARCHAR`, `MULTI`.
  final pulumi.Input<String> measureValueType;
  /// Configuration block for attribute mappings for `MULTI` value measures. Required when `measure_value_type` is `MULTI`. See below.
  final pulumi.Input<List<ScheduledQueryTargetConfigurationTimestreamConfigurationMixedMeasureMappingMultiMeasureAttributeMapping>>? multiMeasureAttributeMappings;
  /// Source column from which measure-value is to be read for result materialization.
  final pulumi.Input<String>? sourceColumn;
  /// Target measure name to be used. If not provided, the target measure name by default is `measure_name`, if provided, or `source_column` otherwise.
  final pulumi.Input<String>? targetMeasureName;

  /// Creates a new [ScheduledQueryTargetConfigurationTimestreamConfigurationMixedMeasureMapping].
  /// [measureName] Refers to the value of measure_name in a result row. This field is required if `measure_name_column` is provided.
  /// [measureValueType] Type of the value that is to be read from `source_column`. Valid values are `BIGINT`, `BOOLEAN`, `DOUBLE`, `VARCHAR`, `MULTI`.
  /// [multiMeasureAttributeMappings] Configuration block for attribute mappings for `MULTI` value measures. Required when `measure_value_type` is `MULTI`. See below.
  /// [sourceColumn] Source column from which measure-value is to be read for result materialization.
  /// [targetMeasureName] Target measure name to be used. If not provided, the target measure name by default is `measure_name`, if provided, or `source_column` otherwise.
  ScheduledQueryTargetConfigurationTimestreamConfigurationMixedMeasureMapping({
    this.measureName,
    required this.measureValueType,
    this.multiMeasureAttributeMappings,
    this.sourceColumn,
    this.targetMeasureName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'measureName': ?measureName,
      'measureValueType': measureValueType,
      'multiMeasureAttributeMappings': ?pulumi.Input.mapOptionalInputValue<List<ScheduledQueryTargetConfigurationTimestreamConfigurationMixedMeasureMappingMultiMeasureAttributeMapping>, List<Map<String, dynamic>>>(multiMeasureAttributeMappings, (value) => pulumi.Input.encodeList<ScheduledQueryTargetConfigurationTimestreamConfigurationMixedMeasureMappingMultiMeasureAttributeMapping, Map<String, dynamic>>(value, (value) => value.toMap())),
      'sourceColumn': ?sourceColumn,
      'targetMeasureName': ?targetMeasureName,
    };
  }

  factory ScheduledQueryTargetConfigurationTimestreamConfigurationMixedMeasureMapping.fromMap(Map<String, dynamic> map) {
    return ScheduledQueryTargetConfigurationTimestreamConfigurationMixedMeasureMapping(
      measureName: map['measureName'] == null ? null : ((map['measureName'] as String).input()).input(),
      measureValueType: (map['measureValueType'] as String).input(),
      multiMeasureAttributeMappings: map['multiMeasureAttributeMappings'] == null ? null : ((pulumi.Input.decodeList<ScheduledQueryTargetConfigurationTimestreamConfigurationMixedMeasureMappingMultiMeasureAttributeMapping>(map['multiMeasureAttributeMappings']!, (value) => ScheduledQueryTargetConfigurationTimestreamConfigurationMixedMeasureMappingMultiMeasureAttributeMapping.fromMap((value as Map).cast<String, dynamic>()))).input()).input(),
      sourceColumn: map['sourceColumn'] == null ? null : ((map['sourceColumn'] as String).input()).input(),
      targetMeasureName: map['targetMeasureName'] == null ? null : ((map['targetMeasureName'] as String).input()).input(),
    );
  }
}

