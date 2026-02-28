// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'scheduled_query_target_configuration_timestream_configuration_dimension_mapping.dart';
import 'scheduled_query_target_configuration_timestream_configuration_mixed_measure_mapping.dart';
import 'scheduled_query_target_configuration_timestream_configuration_multi_measure_mappings.dart';

class ScheduledQueryTargetConfigurationTimestreamConfiguration {
  /// Name of Timestream database to which the query result will be written.
  final String databaseName;

  /// Configuration block for mapping of column(s) from the query result to the dimension in the destination table. See below.
  final List<
          ScheduledQueryTargetConfigurationTimestreamConfigurationDimensionMapping>
      dimensionMappings;

  /// Name of the measure column.
  final String? measureNameColumn;

  /// Configuration block for how to map measures to multi-measure records. See below.
  final List<
          ScheduledQueryTargetConfigurationTimestreamConfigurationMixedMeasureMapping>?
      mixedMeasureMappings;

  /// Configuration block for multi-measure mappings. Only one of `mixed_measure_mappings` or `multi_measure_mappings` can be provided. `multi_measure_mappings` can be used to ingest data as multi measures in the derived table. See below.
  final ScheduledQueryTargetConfigurationTimestreamConfigurationMultiMeasureMappings?
      multiMeasureMappings;

  /// Name of Timestream table that the query result will be written to. The table should be within the same database that is provided in Timestream configuration.
  final String tableName;

  /// Column from query result that should be used as the time column in destination table. Column type for this should be TIMESTAMP.
  final String timeColumn;

  /// Creates a new [ScheduledQueryTargetConfigurationTimestreamConfiguration].
  /// [databaseName] Name of Timestream database to which the query result will be written.
  /// [dimensionMappings] Configuration block for mapping of column(s) from the query result to the dimension in the destination table. See below.
  /// [measureNameColumn] Name of the measure column.
  /// [mixedMeasureMappings] Configuration block for how to map measures to multi-measure records. See below.
  /// [multiMeasureMappings] Configuration block for multi-measure mappings. Only one of `mixed_measure_mappings` or `multi_measure_mappings` can be provided. `multi_measure_mappings` can be used to ingest data as multi measures in the derived table. See below.
  /// [tableName] Name of Timestream table that the query result will be written to. The table should be within the same database that is provided in Timestream configuration.
  /// [timeColumn] Column from query result that should be used as the time column in destination table. Column type for this should be TIMESTAMP.
  ScheduledQueryTargetConfigurationTimestreamConfiguration({
    required this.databaseName,
    required this.dimensionMappings,
    this.measureNameColumn,
    this.mixedMeasureMappings,
    this.multiMeasureMappings,
    required this.tableName,
    required this.timeColumn,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['databaseName'] = databaseName;
    map['dimensionMappings'] = pulumi.Input.encodeList<
        ScheduledQueryTargetConfigurationTimestreamConfigurationDimensionMapping,
        Map<String, dynamic>>(dimensionMappings, (value) => value.toMap());
    final measureNameColumnValue = measureNameColumn;
    if (measureNameColumnValue != null) {
      map['measureNameColumn'] = measureNameColumnValue;
    }
    final mixedMeasureMappingsValue = mixedMeasureMappings;
    if (mixedMeasureMappingsValue != null) {
      map['mixedMeasureMappings'] = pulumi.Input.encodeList<
          ScheduledQueryTargetConfigurationTimestreamConfigurationMixedMeasureMapping,
          Map<String,
              dynamic>>(mixedMeasureMappingsValue, (value) => value.toMap());
    }
    final multiMeasureMappingsValue = multiMeasureMappings;
    if (multiMeasureMappingsValue != null) {
      map['multiMeasureMappings'] = multiMeasureMappingsValue.toMap();
    }
    map['tableName'] = tableName;
    map['timeColumn'] = timeColumn;
    return map;
  }

  factory ScheduledQueryTargetConfigurationTimestreamConfiguration.fromMap(
      Map<String, dynamic> map) {
    return ScheduledQueryTargetConfigurationTimestreamConfiguration(
      databaseName: map['databaseName'] as String,
      dimensionMappings: pulumi.Input.decodeList<
              ScheduledQueryTargetConfigurationTimestreamConfigurationDimensionMapping>(
          map['dimensionMappings'],
          (value) =>
              ScheduledQueryTargetConfigurationTimestreamConfigurationDimensionMapping
                  .fromMap((value as Map).cast<String, dynamic>())),
      measureNameColumn: map['measureNameColumn'] == null
          ? null
          : map['measureNameColumn'] as String,
      mixedMeasureMappings: map['mixedMeasureMappings'] == null
          ? null
          : pulumi.Input.decodeList<
                  ScheduledQueryTargetConfigurationTimestreamConfigurationMixedMeasureMapping>(
              map['mixedMeasureMappings'],
              (value) =>
                  ScheduledQueryTargetConfigurationTimestreamConfigurationMixedMeasureMapping
                      .fromMap((value as Map).cast<String, dynamic>())),
      multiMeasureMappings: map['multiMeasureMappings'] == null
          ? null
          : ScheduledQueryTargetConfigurationTimestreamConfigurationMultiMeasureMappings
              .fromMap(
                  (map['multiMeasureMappings'] as Map).cast<String, dynamic>()),
      tableName: map['tableName'] as String,
      timeColumn: map['timeColumn'] as String,
    );
  }
}
