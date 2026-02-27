// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../scheduled_query_target_configuration_timestream_configuration_multi_measure_mappings_multi_measure_attribute_mapping/scheduled_query_target_configuration_timestream_configuration_multi_measure_mappings_multi_measure_attribute_mapping.dart';

class ScheduledQueryTargetConfigurationTimestreamConfigurationMultiMeasureMappings {
  /// Attribute mappings to be used for mapping query results to ingest data for multi-measure attributes. See above.
  final List<
          ScheduledQueryTargetConfigurationTimestreamConfigurationMultiMeasureMappingsMultiMeasureAttributeMapping>
      multiMeasureAttributeMappings;

  /// Name of the target multi-measure name in the derived table. This input is required when `measure_name_column` is not provided. If `measure_name_column` is provided, then the value from that column will be used as the multi-measure name.
  final String? targetMultiMeasureName;

  ScheduledQueryTargetConfigurationTimestreamConfigurationMultiMeasureMappings({
    required this.multiMeasureAttributeMappings,
    this.targetMultiMeasureName,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['multiMeasureAttributeMappings'] = pulumi.Input.encodeList<
        ScheduledQueryTargetConfigurationTimestreamConfigurationMultiMeasureMappingsMultiMeasureAttributeMapping,
        Map<String,
            dynamic>>(multiMeasureAttributeMappings, (value) => value.toMap());
    final targetMultiMeasureNameValue = targetMultiMeasureName;
    if (targetMultiMeasureNameValue != null) {
      map['targetMultiMeasureName'] = targetMultiMeasureNameValue;
    }
    return map;
  }

  factory ScheduledQueryTargetConfigurationTimestreamConfigurationMultiMeasureMappings.fromMap(
      Map<String, dynamic> map) {
    return ScheduledQueryTargetConfigurationTimestreamConfigurationMultiMeasureMappings(
      multiMeasureAttributeMappings: pulumi.Input.decodeList<
              ScheduledQueryTargetConfigurationTimestreamConfigurationMultiMeasureMappingsMultiMeasureAttributeMapping>(
          map['multiMeasureAttributeMappings'],
          (value) =>
              ScheduledQueryTargetConfigurationTimestreamConfigurationMultiMeasureMappingsMultiMeasureAttributeMapping
                  .fromMap((value as Map).cast<String, dynamic>())),
      targetMultiMeasureName: map['targetMultiMeasureName'] == null
          ? null
          : map['targetMultiMeasureName'] as String,
    );
  }
}
