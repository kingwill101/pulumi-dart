// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'scheduled_query_target_configuration_timestream_configuration_multi_measure_mappings_multi_measure_attribute_mapping.dart';

class ScheduledQueryTargetConfigurationTimestreamConfigurationMultiMeasureMappings {
  /// Attribute mappings to be used for mapping query results to ingest data for multi-measure attributes. See above.
  final pulumi.Input<List<ScheduledQueryTargetConfigurationTimestreamConfigurationMultiMeasureMappingsMultiMeasureAttributeMapping>> multiMeasureAttributeMappings;
  /// Name of the target multi-measure name in the derived table. This input is required when `measure_name_column` is not provided. If `measure_name_column` is provided, then the value from that column will be used as the multi-measure name.
  final pulumi.Input<String>? targetMultiMeasureName;

  /// Creates a new [ScheduledQueryTargetConfigurationTimestreamConfigurationMultiMeasureMappings].
  /// [multiMeasureAttributeMappings] Attribute mappings to be used for mapping query results to ingest data for multi-measure attributes. See above.
  /// [targetMultiMeasureName] Name of the target multi-measure name in the derived table. This input is required when `measure_name_column` is not provided. If `measure_name_column` is provided, then the value from that column will be used as the multi-measure name.
  const ScheduledQueryTargetConfigurationTimestreamConfigurationMultiMeasureMappings({
    required this.multiMeasureAttributeMappings,
    this.targetMultiMeasureName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'multiMeasureAttributeMappings': pulumi.Input.mapInputValue<List<ScheduledQueryTargetConfigurationTimestreamConfigurationMultiMeasureMappingsMultiMeasureAttributeMapping>, List<Map<String, dynamic>>>(multiMeasureAttributeMappings, (value) => pulumi.Input.encodeList<ScheduledQueryTargetConfigurationTimestreamConfigurationMultiMeasureMappingsMultiMeasureAttributeMapping, Map<String, dynamic>>(value, (value) => value.toMap())),
      'targetMultiMeasureName': ?targetMultiMeasureName,
    };
  }

  factory ScheduledQueryTargetConfigurationTimestreamConfigurationMultiMeasureMappings.fromMap(Map<String, dynamic> map) {
    return ScheduledQueryTargetConfigurationTimestreamConfigurationMultiMeasureMappings(
      multiMeasureAttributeMappings: pulumi.Input.fromValue(pulumi.Input.decodeList<ScheduledQueryTargetConfigurationTimestreamConfigurationMultiMeasureMappingsMultiMeasureAttributeMapping>(map['multiMeasureAttributeMappings']!, (value) => ScheduledQueryTargetConfigurationTimestreamConfigurationMultiMeasureMappingsMultiMeasureAttributeMapping.fromMap((value as Map).cast<String, dynamic>()))),
      targetMultiMeasureName: (() { final guardedValue = map['targetMultiMeasureName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

