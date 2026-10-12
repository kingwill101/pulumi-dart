// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'agent_data_source_data_source_configuration_share_point_configuration_crawler_configuration_filter_configuration_pattern_object_filter.dart';

class AgentDataSourceDataSourceConfigurationSharePointConfigurationCrawlerConfigurationFilterConfiguration {
  /// Configuration for filtering objects or content types of the data source. See `data_source_configuration.share_point_configuration.crawler_configuration.filter_configuration.pattern_object_filter` Block for details.
  final pulumi.Input<List<AgentDataSourceDataSourceConfigurationSharePointConfigurationCrawlerConfigurationFilterConfigurationPatternObjectFilter>?>? patternObjectFilters;
  /// Type of filtering to apply to objects or content of the data source. For example, the `PATTERN` type uses regular expression patterns to filter content.
  final pulumi.Input<String> type;

  /// Creates a new [AgentDataSourceDataSourceConfigurationSharePointConfigurationCrawlerConfigurationFilterConfiguration].
  /// [patternObjectFilters] Configuration for filtering objects or content types of the data source. See `data_source_configuration.share_point_configuration.crawler_configuration.filter_configuration.pattern_object_filter` Block for details.
  /// [type] Type of filtering to apply to objects or content of the data source. For example, the `PATTERN` type uses regular expression patterns to filter content.
  const AgentDataSourceDataSourceConfigurationSharePointConfigurationCrawlerConfigurationFilterConfiguration({
    this.patternObjectFilters,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'patternObjectFilters': ?pulumi.Input.mapOptionalInputValue<List<AgentDataSourceDataSourceConfigurationSharePointConfigurationCrawlerConfigurationFilterConfigurationPatternObjectFilter>, List<Map<String, dynamic>>>(patternObjectFilters, (value) => pulumi.Input.encodeList<AgentDataSourceDataSourceConfigurationSharePointConfigurationCrawlerConfigurationFilterConfigurationPatternObjectFilter, Map<String, dynamic>>(value, (value) => value.toMap())),
      'type': type,
    };
  }

  factory AgentDataSourceDataSourceConfigurationSharePointConfigurationCrawlerConfigurationFilterConfiguration.fromMap(Map<String, dynamic> map) {
    return AgentDataSourceDataSourceConfigurationSharePointConfigurationCrawlerConfigurationFilterConfiguration(
      patternObjectFilters: (() { final guardedValue = map['patternObjectFilters']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<AgentDataSourceDataSourceConfigurationSharePointConfigurationCrawlerConfigurationFilterConfigurationPatternObjectFilter>(guardedValue, (value) => AgentDataSourceDataSourceConfigurationSharePointConfigurationCrawlerConfigurationFilterConfigurationPatternObjectFilter.fromMap((value as Map).cast<String, dynamic>()))); })(),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}
