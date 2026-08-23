// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'scheduled_query_target_configuration_timestream_configuration_dimension_mapping.dart';
import 'scheduled_query_target_configuration_timestream_configuration_mixed_measure_mapping.dart';
import 'scheduled_query_target_configuration_timestream_configuration_multi_measure_mappings.dart';

class ScheduledQueryTargetConfigurationTimestreamConfiguration {
  /// Name of Timestream database to which the query result will be written.
  final pulumi.Input<String> databaseName;
  /// Configuration block for mapping of column(s) from the query result to the dimension in the destination table. See below.
  final pulumi.Input<List<ScheduledQueryTargetConfigurationTimestreamConfigurationDimensionMapping>> dimensionMappings;
  /// Name of the measure column.
  final pulumi.Input<String>? measureNameColumn;
  /// Configuration block for how to map measures to multi-measure records. See below.
  final pulumi.Input<List<ScheduledQueryTargetConfigurationTimestreamConfigurationMixedMeasureMapping>>? mixedMeasureMappings;
  /// Configuration block for multi-measure mappings. Only one of `mixedMeasureMappings` or `multiMeasureMappings` can be provided. `multiMeasureMappings` can be used to ingest data as multi measures in the derived table. See below.
  final pulumi.Input<ScheduledQueryTargetConfigurationTimestreamConfigurationMultiMeasureMappings>? multiMeasureMappings;
  /// Name of Timestream table that the query result will be written to. The table should be within the same database that is provided in Timestream configuration.
  final pulumi.Input<String> tableName;
  /// Column from query result that should be used as the time column in destination table. Column type for this should be TIMESTAMP.
  final pulumi.Input<String> timeColumn;

  /// Creates a new [ScheduledQueryTargetConfigurationTimestreamConfiguration].
  /// [databaseName] Name of Timestream database to which the query result will be written.
  /// [dimensionMappings] Configuration block for mapping of column(s) from the query result to the dimension in the destination table. See below.
  /// [measureNameColumn] Name of the measure column.
  /// [mixedMeasureMappings] Configuration block for how to map measures to multi-measure records. See below.
  /// [multiMeasureMappings] Configuration block for multi-measure mappings. Only one of `mixedMeasureMappings` or `multiMeasureMappings` can be provided. `multiMeasureMappings` can be used to ingest data as multi measures in the derived table. See below.
  /// [tableName] Name of Timestream table that the query result will be written to. The table should be within the same database that is provided in Timestream configuration.
  /// [timeColumn] Column from query result that should be used as the time column in destination table. Column type for this should be TIMESTAMP.
  const ScheduledQueryTargetConfigurationTimestreamConfiguration({
    required this.databaseName,
    required this.dimensionMappings,
    this.measureNameColumn,
    this.mixedMeasureMappings,
    this.multiMeasureMappings,
    required this.tableName,
    required this.timeColumn,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'databaseName': databaseName,
      'dimensionMappings': pulumi.Input.mapInputValue<List<ScheduledQueryTargetConfigurationTimestreamConfigurationDimensionMapping>, List<Map<String, dynamic>>>(dimensionMappings, (value) => pulumi.Input.encodeList<ScheduledQueryTargetConfigurationTimestreamConfigurationDimensionMapping, Map<String, dynamic>>(value, (value) => value.toMap())),
      'measureNameColumn': ?measureNameColumn,
      'mixedMeasureMappings': ?pulumi.Input.mapOptionalInputValue<List<ScheduledQueryTargetConfigurationTimestreamConfigurationMixedMeasureMapping>, List<Map<String, dynamic>>>(mixedMeasureMappings, (value) => pulumi.Input.encodeList<ScheduledQueryTargetConfigurationTimestreamConfigurationMixedMeasureMapping, Map<String, dynamic>>(value, (value) => value.toMap())),
      'multiMeasureMappings': ?pulumi.Input.mapOptionalInputValue<ScheduledQueryTargetConfigurationTimestreamConfigurationMultiMeasureMappings, Map<String, dynamic>>(multiMeasureMappings, (value) => value.toMap()),
      'tableName': tableName,
      'timeColumn': timeColumn,
    };
  }

  factory ScheduledQueryTargetConfigurationTimestreamConfiguration.fromMap(Map<String, dynamic> map) {
    return ScheduledQueryTargetConfigurationTimestreamConfiguration(
      databaseName: pulumi.Input.fromValue(map['databaseName'] as String),
      dimensionMappings: pulumi.Input.fromValue(pulumi.Input.decodeList<ScheduledQueryTargetConfigurationTimestreamConfigurationDimensionMapping>(map['dimensionMappings']!, (value) => ScheduledQueryTargetConfigurationTimestreamConfigurationDimensionMapping.fromMap((value as Map).cast<String, dynamic>()))),
      measureNameColumn: (() { final guardedValue = map['measureNameColumn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      mixedMeasureMappings: (() { final guardedValue = map['mixedMeasureMappings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ScheduledQueryTargetConfigurationTimestreamConfigurationMixedMeasureMapping>(guardedValue, (value) => ScheduledQueryTargetConfigurationTimestreamConfigurationMixedMeasureMapping.fromMap((value as Map).cast<String, dynamic>()))); })(),
      multiMeasureMappings: (() { final guardedValue = map['multiMeasureMappings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ScheduledQueryTargetConfigurationTimestreamConfigurationMultiMeasureMappings.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      tableName: pulumi.Input.fromValue(map['tableName'] as String),
      timeColumn: pulumi.Input.fromValue(map['timeColumn'] as String),
    );
  }
}
