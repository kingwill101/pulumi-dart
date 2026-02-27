// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../agent_data_source_data_source_configuration_confluence_configuration_crawler_configuration_filter_configuration_pattern_object_filter/agent_data_source_data_source_configuration_confluence_configuration_crawler_configuration_filter_configuration_pattern_object_filter.dart';

class AgentDataSourceDataSourceConfigurationConfluenceConfigurationCrawlerConfigurationFilterConfiguration {
  /// The configuration of filtering certain objects or content types of the data source. See `pattern_object_filter` block for details.
  final List<
          AgentDataSourceDataSourceConfigurationConfluenceConfigurationCrawlerConfigurationFilterConfigurationPatternObjectFilter>?
      patternObjectFilters;

  /// The type of filtering that you want to apply to certain objects or content of the data source. For example, the PATTERN type is regular expression patterns you can apply to filter your content.
  final String type;

  AgentDataSourceDataSourceConfigurationConfluenceConfigurationCrawlerConfigurationFilterConfiguration({
    this.patternObjectFilters,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final patternObjectFiltersValue = patternObjectFilters;
    if (patternObjectFiltersValue != null) {
      map['patternObjectFilters'] = Input.encodeList<
          AgentDataSourceDataSourceConfigurationConfluenceConfigurationCrawlerConfigurationFilterConfigurationPatternObjectFilter,
          Map<String,
              dynamic>>(patternObjectFiltersValue, (value) => value.toMap());
    }
    map['type'] = type;
    return map;
  }

  factory AgentDataSourceDataSourceConfigurationConfluenceConfigurationCrawlerConfigurationFilterConfiguration.fromMap(
      Map<String, dynamic> map) {
    return AgentDataSourceDataSourceConfigurationConfluenceConfigurationCrawlerConfigurationFilterConfiguration(
      patternObjectFilters: map['patternObjectFilters'] == null
          ? null
          : Input.decodeList<
                  AgentDataSourceDataSourceConfigurationConfluenceConfigurationCrawlerConfigurationFilterConfigurationPatternObjectFilter>(
              map['patternObjectFilters'],
              (value) =>
                  AgentDataSourceDataSourceConfigurationConfluenceConfigurationCrawlerConfigurationFilterConfigurationPatternObjectFilter
                      .fromMap((value as Map).cast<String, dynamic>())),
      type: map['type'] as String,
    );
  }
}
