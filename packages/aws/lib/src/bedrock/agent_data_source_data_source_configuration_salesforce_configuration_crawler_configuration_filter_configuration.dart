// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'agent_data_source_data_source_configuration_salesforce_configuration_crawler_configuration_filter_configuration_pattern_object_filter.dart';

class AgentDataSourceDataSourceConfigurationSalesforceConfigurationCrawlerConfigurationFilterConfiguration {
  /// The configuration of filtering certain objects or content types of the data source. See `pattern_object_filter` block for details.
  final List<
          AgentDataSourceDataSourceConfigurationSalesforceConfigurationCrawlerConfigurationFilterConfigurationPatternObjectFilter>?
      patternObjectFilters;

  /// The type of filtering that you want to apply to certain objects or content of the data source. For example, the PATTERN type is regular expression patterns you can apply to filter your content.
  final String type;

  /// Creates a new [AgentDataSourceDataSourceConfigurationSalesforceConfigurationCrawlerConfigurationFilterConfiguration].
  /// [patternObjectFilters] The configuration of filtering certain objects or content types of the data source. See `pattern_object_filter` block for details.
  /// [type] The type of filtering that you want to apply to certain objects or content of the data source. For example, the PATTERN type is regular expression patterns you can apply to filter your content.
  AgentDataSourceDataSourceConfigurationSalesforceConfigurationCrawlerConfigurationFilterConfiguration({
    this.patternObjectFilters,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final patternObjectFiltersValue = patternObjectFilters;
    if (patternObjectFiltersValue != null) {
      map['patternObjectFilters'] = pulumi.Input.encodeList<
          AgentDataSourceDataSourceConfigurationSalesforceConfigurationCrawlerConfigurationFilterConfigurationPatternObjectFilter,
          Map<String,
              dynamic>>(patternObjectFiltersValue, (value) => value.toMap());
    }
    map['type'] = type;
    return map;
  }

  factory AgentDataSourceDataSourceConfigurationSalesforceConfigurationCrawlerConfigurationFilterConfiguration.fromMap(
      Map<String, dynamic> map) {
    return AgentDataSourceDataSourceConfigurationSalesforceConfigurationCrawlerConfigurationFilterConfiguration(
      patternObjectFilters: map['patternObjectFilters'] == null
          ? null
          : pulumi.Input.decodeList<
                  AgentDataSourceDataSourceConfigurationSalesforceConfigurationCrawlerConfigurationFilterConfigurationPatternObjectFilter>(
              map['patternObjectFilters'],
              (value) =>
                  AgentDataSourceDataSourceConfigurationSalesforceConfigurationCrawlerConfigurationFilterConfigurationPatternObjectFilter
                      .fromMap((value as Map).cast<String, dynamic>())),
      type: map['type'] as String,
    );
  }
}
