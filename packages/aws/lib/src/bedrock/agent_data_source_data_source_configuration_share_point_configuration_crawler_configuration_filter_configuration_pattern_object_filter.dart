// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'agent_data_source_data_source_configuration_share_point_configuration_crawler_configuration_filter_configuration_pattern_object_filter_filter.dart';

class AgentDataSourceDataSourceConfigurationSharePointConfigurationCrawlerConfigurationFilterConfigurationPatternObjectFilter {
  /// The configuration of specific filters applied to your data source content. Minimum of 1 filter and maximum of 25 filters.
  ///
  /// Each filter object should contain the following configuration:
  final List<
          AgentDataSourceDataSourceConfigurationSharePointConfigurationCrawlerConfigurationFilterConfigurationPatternObjectFilterFilter>?
      filters;

  /// Creates a new [AgentDataSourceDataSourceConfigurationSharePointConfigurationCrawlerConfigurationFilterConfigurationPatternObjectFilter].
  /// [filters] The configuration of specific filters applied to your data source content. Minimum of 1 filter and maximum of 25 filters.
  AgentDataSourceDataSourceConfigurationSharePointConfigurationCrawlerConfigurationFilterConfigurationPatternObjectFilter({
    this.filters,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final filtersValue = filters;
    if (filtersValue != null) {
      map['filters'] = pulumi.Input.encodeList<
          AgentDataSourceDataSourceConfigurationSharePointConfigurationCrawlerConfigurationFilterConfigurationPatternObjectFilterFilter,
          Map<String, dynamic>>(filtersValue, (value) => value.toMap());
    }
    return map;
  }

  factory AgentDataSourceDataSourceConfigurationSharePointConfigurationCrawlerConfigurationFilterConfigurationPatternObjectFilter.fromMap(
      Map<String, dynamic> map) {
    return AgentDataSourceDataSourceConfigurationSharePointConfigurationCrawlerConfigurationFilterConfigurationPatternObjectFilter(
      filters: map['filters'] == null
          ? null
          : pulumi.Input.decodeList<
                  AgentDataSourceDataSourceConfigurationSharePointConfigurationCrawlerConfigurationFilterConfigurationPatternObjectFilterFilter>(
              map['filters'],
              (value) =>
                  AgentDataSourceDataSourceConfigurationSharePointConfigurationCrawlerConfigurationFilterConfigurationPatternObjectFilterFilter
                      .fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}
