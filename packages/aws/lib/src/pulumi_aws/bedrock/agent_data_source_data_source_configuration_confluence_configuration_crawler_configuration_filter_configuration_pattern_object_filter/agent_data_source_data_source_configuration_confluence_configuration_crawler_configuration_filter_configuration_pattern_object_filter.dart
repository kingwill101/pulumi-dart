// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../agent_data_source_data_source_configuration_confluence_configuration_crawler_configuration_filter_configuration_pattern_object_filter_filter/agent_data_source_data_source_configuration_confluence_configuration_crawler_configuration_filter_configuration_pattern_object_filter_filter.dart';

class AgentDataSourceDataSourceConfigurationConfluenceConfigurationCrawlerConfigurationFilterConfigurationPatternObjectFilter {
  /// The configuration of specific filters applied to your data source content. Minimum of 1 filter and maximum of 25 filters.
  ///
  /// Each filter object should contain the following configuration:
  final List<
          AgentDataSourceDataSourceConfigurationConfluenceConfigurationCrawlerConfigurationFilterConfigurationPatternObjectFilterFilter>?
      filters;

  AgentDataSourceDataSourceConfigurationConfluenceConfigurationCrawlerConfigurationFilterConfigurationPatternObjectFilter({
    this.filters,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final filtersValue = filters;
    if (filtersValue != null) {
      map['filters'] = pulumi.Input.encodeList<
          AgentDataSourceDataSourceConfigurationConfluenceConfigurationCrawlerConfigurationFilterConfigurationPatternObjectFilterFilter,
          Map<String, dynamic>>(filtersValue, (value) => value.toMap());
    }
    return map;
  }

  factory AgentDataSourceDataSourceConfigurationConfluenceConfigurationCrawlerConfigurationFilterConfigurationPatternObjectFilter.fromMap(
      Map<String, dynamic> map) {
    return AgentDataSourceDataSourceConfigurationConfluenceConfigurationCrawlerConfigurationFilterConfigurationPatternObjectFilter(
      filters: map['filters'] == null
          ? null
          : pulumi.Input.decodeList<
                  AgentDataSourceDataSourceConfigurationConfluenceConfigurationCrawlerConfigurationFilterConfigurationPatternObjectFilterFilter>(
              map['filters'],
              (value) =>
                  AgentDataSourceDataSourceConfigurationConfluenceConfigurationCrawlerConfigurationFilterConfigurationPatternObjectFilterFilter
                      .fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}
