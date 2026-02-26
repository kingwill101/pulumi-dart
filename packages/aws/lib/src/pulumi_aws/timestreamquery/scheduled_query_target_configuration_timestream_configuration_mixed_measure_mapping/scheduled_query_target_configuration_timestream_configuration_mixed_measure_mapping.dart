// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../scheduled_query_target_configuration_timestream_configuration_mixed_measure_mapping_multi_measure_attribute_mapping/scheduled_query_target_configuration_timestream_configuration_mixed_measure_mapping_multi_measure_attribute_mapping.dart';

class ScheduledQueryTargetConfigurationTimestreamConfigurationMixedMeasureMapping {
  /// Refers to the value of<span pulumi-lang-nodejs=" measureName " pulumi-lang-dotnet=" MeasureName " pulumi-lang-go=" measureName " pulumi-lang-python=" measure_name " pulumi-lang-yaml=" measureName " pulumi-lang-java=" measureName "> measure_name </span>in a result row. This field is required if <span pulumi-lang-nodejs="`measureNameColumn`" pulumi-lang-dotnet="`MeasureNameColumn`" pulumi-lang-go="`measureNameColumn`" pulumi-lang-python="`measure_name_column`" pulumi-lang-yaml="`measureNameColumn`" pulumi-lang-java="`measureNameColumn`">`measure_name_column`</span> is provided.
  final String? measureName;

  /// Type of the value that is to be read from <span pulumi-lang-nodejs="`sourceColumn`" pulumi-lang-dotnet="`SourceColumn`" pulumi-lang-go="`sourceColumn`" pulumi-lang-python="`source_column`" pulumi-lang-yaml="`sourceColumn`" pulumi-lang-java="`sourceColumn`">`source_column`</span>. Valid values are `BIGINT`, `BOOLEAN`, `DOUBLE`, `VARCHAR`, `MULTI`.
  final String measureValueType;

  /// Configuration block for attribute mappings for `MULTI` value measures. Required when <span pulumi-lang-nodejs="`measureValueType`" pulumi-lang-dotnet="`MeasureValueType`" pulumi-lang-go="`measureValueType`" pulumi-lang-python="`measure_value_type`" pulumi-lang-yaml="`measureValueType`" pulumi-lang-java="`measureValueType`">`measure_value_type`</span> is `MULTI`. See below.
  final List<
          ScheduledQueryTargetConfigurationTimestreamConfigurationMixedMeasureMappingMultiMeasureAttributeMapping>?
      multiMeasureAttributeMappings;

  /// Source column from which measure-value is to be read for result materialization.
  final String? sourceColumn;

  /// Target measure name to be used. If not provided, the target measure name by default is <span pulumi-lang-nodejs="`measureName`" pulumi-lang-dotnet="`MeasureName`" pulumi-lang-go="`measureName`" pulumi-lang-python="`measure_name`" pulumi-lang-yaml="`measureName`" pulumi-lang-java="`measureName`">`measure_name`</span>, if provided, or <span pulumi-lang-nodejs="`sourceColumn`" pulumi-lang-dotnet="`SourceColumn`" pulumi-lang-go="`sourceColumn`" pulumi-lang-python="`source_column`" pulumi-lang-yaml="`sourceColumn`" pulumi-lang-java="`sourceColumn`">`source_column`</span> otherwise.
  final String? targetMeasureName;

  ScheduledQueryTargetConfigurationTimestreamConfigurationMixedMeasureMapping({
    this.measureName,
    required this.measureValueType,
    this.multiMeasureAttributeMappings,
    this.sourceColumn,
    this.targetMeasureName,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final measureNameValue = measureName;
    if (measureNameValue != null) {
      map['measureName'] = measureNameValue;
    }
    map['measureValueType'] = measureValueType;
    final multiMeasureAttributeMappingsValue = multiMeasureAttributeMappings;
    if (multiMeasureAttributeMappingsValue != null) {
      map['multiMeasureAttributeMappings'] = Input.encodeList<
              ScheduledQueryTargetConfigurationTimestreamConfigurationMixedMeasureMappingMultiMeasureAttributeMapping,
              Map<String, dynamic>>(
          multiMeasureAttributeMappingsValue, (value) => value.toMap());
    }
    final sourceColumnValue = sourceColumn;
    if (sourceColumnValue != null) {
      map['sourceColumn'] = sourceColumnValue;
    }
    final targetMeasureNameValue = targetMeasureName;
    if (targetMeasureNameValue != null) {
      map['targetMeasureName'] = targetMeasureNameValue;
    }
    return map;
  }

  factory ScheduledQueryTargetConfigurationTimestreamConfigurationMixedMeasureMapping.fromMap(
      Map<String, dynamic> map) {
    return ScheduledQueryTargetConfigurationTimestreamConfigurationMixedMeasureMapping(
      measureName:
          map['measureName'] == null ? null : map['measureName'] as String,
      measureValueType: map['measureValueType'] as String,
      multiMeasureAttributeMappings: map['multiMeasureAttributeMappings'] ==
              null
          ? null
          : Input.decodeList<
                  ScheduledQueryTargetConfigurationTimestreamConfigurationMixedMeasureMappingMultiMeasureAttributeMapping>(
              map['multiMeasureAttributeMappings'],
              (value) =>
                  ScheduledQueryTargetConfigurationTimestreamConfigurationMixedMeasureMappingMultiMeasureAttributeMapping
                      .fromMap((value as Map).cast<String, dynamic>())),
      sourceColumn:
          map['sourceColumn'] == null ? null : map['sourceColumn'] as String,
      targetMeasureName: map['targetMeasureName'] == null
          ? null
          : map['targetMeasureName'] as String,
    );
  }
}
