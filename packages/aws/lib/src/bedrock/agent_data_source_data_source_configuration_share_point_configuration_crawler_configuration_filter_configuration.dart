// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'agent_data_source_data_source_configuration_share_point_configuration_crawler_configuration_filter_configuration_pattern_object_filter.dart';

class AgentDataSourceDataSourceConfigurationSharePointConfigurationCrawlerConfigurationFilterConfiguration {
  /// The configuration of filtering certain objects or content types of the data source. See `pattern_object_filter` block for details.
  final List<
          AgentDataSourceDataSourceConfigurationSharePointConfigurationCrawlerConfigurationFilterConfigurationPatternObjectFilter>?
      patternObjectFilters;

  /// The type of filtering that you want to apply to certain objects or content of the data source. For example, the PATTERN type is regular expression patterns you can apply to filter your content.
  final String type;

  /// Creates a new [AgentDataSourceDataSourceConfigurationSharePointConfigurationCrawlerConfigurationFilterConfiguration].
  /// [patternObjectFilters] The configuration of filtering certain objects or content types of the data source. See `pattern_object_filter` block for details.
  /// [type] The type of filtering that you want to apply to certain objects or content of the data source. For example, the PATTERN type is regular expression patterns you can apply to filter your content.
  AgentDataSourceDataSourceConfigurationSharePointConfigurationCrawlerConfigurationFilterConfiguration({
    this.patternObjectFilters,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final patternObjectFiltersValue = patternObjectFilters;
    if (patternObjectFiltersValue != null) {
      map['patternObjectFilters'] = pulumi.Input.encodeList<
          AgentDataSourceDataSourceConfigurationSharePointConfigurationCrawlerConfigurationFilterConfigurationPatternObjectFilter,
          Map<String,
              dynamic>>(patternObjectFiltersValue, (value) => value.toMap());
    }
    map['type'] = type;
    return map;
  }

  factory AgentDataSourceDataSourceConfigurationSharePointConfigurationCrawlerConfigurationFilterConfiguration.fromMap(
      Map<String, dynamic> map) {
    return AgentDataSourceDataSourceConfigurationSharePointConfigurationCrawlerConfigurationFilterConfiguration(
      patternObjectFilters: map['patternObjectFilters'] == null
          ? null
          : pulumi.Input.decodeList<
                  AgentDataSourceDataSourceConfigurationSharePointConfigurationCrawlerConfigurationFilterConfigurationPatternObjectFilter>(
              map['patternObjectFilters'],
              (value) =>
                  AgentDataSourceDataSourceConfigurationSharePointConfigurationCrawlerConfigurationFilterConfigurationPatternObjectFilter
                      .fromMap((value as Map).cast<String, dynamic>())),
      type: map['type'] as String,
    );
  }
}
