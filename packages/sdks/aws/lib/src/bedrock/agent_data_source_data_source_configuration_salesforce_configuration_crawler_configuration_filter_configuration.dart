// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'agent_data_source_data_source_configuration_salesforce_configuration_crawler_configuration_filter_configuration_pattern_object_filter.dart';

class AgentDataSourceDataSourceConfigurationSalesforceConfigurationCrawlerConfigurationFilterConfiguration {
  /// Configuration for filtering objects or content types of the data source. See `data_source_configuration.share_point_configuration.crawler_configuration.filter_configuration.pattern_object_filter` Block for details.
  final pulumi.Input<List<AgentDataSourceDataSourceConfigurationSalesforceConfigurationCrawlerConfigurationFilterConfigurationPatternObjectFilter>?>? patternObjectFilters;
  /// Type of filtering to apply to objects or content of the data source. For example, the `PATTERN` type uses regular expression patterns to filter content.
  final pulumi.Input<String> type;

  /// Creates a new [AgentDataSourceDataSourceConfigurationSalesforceConfigurationCrawlerConfigurationFilterConfiguration].
  /// [patternObjectFilters] Configuration for filtering objects or content types of the data source. See `data_source_configuration.share_point_configuration.crawler_configuration.filter_configuration.pattern_object_filter` Block for details.
  /// [type] Type of filtering to apply to objects or content of the data source. For example, the `PATTERN` type uses regular expression patterns to filter content.
  const AgentDataSourceDataSourceConfigurationSalesforceConfigurationCrawlerConfigurationFilterConfiguration({
    this.patternObjectFilters,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'patternObjectFilters': ?pulumi.Input.mapOptionalInputValue<List<AgentDataSourceDataSourceConfigurationSalesforceConfigurationCrawlerConfigurationFilterConfigurationPatternObjectFilter>, List<Map<String, dynamic>>>(patternObjectFilters, (value) => pulumi.Input.encodeList<AgentDataSourceDataSourceConfigurationSalesforceConfigurationCrawlerConfigurationFilterConfigurationPatternObjectFilter, Map<String, dynamic>>(value, (value) => value.toMap())),
      'type': type,
    };
  }

  factory AgentDataSourceDataSourceConfigurationSalesforceConfigurationCrawlerConfigurationFilterConfiguration.fromMap(Map<String, dynamic> map) {
    return AgentDataSourceDataSourceConfigurationSalesforceConfigurationCrawlerConfigurationFilterConfiguration(
      patternObjectFilters: (() { final guardedValue = map['patternObjectFilters']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<AgentDataSourceDataSourceConfigurationSalesforceConfigurationCrawlerConfigurationFilterConfigurationPatternObjectFilter>(guardedValue, (value) => AgentDataSourceDataSourceConfigurationSalesforceConfigurationCrawlerConfigurationFilterConfigurationPatternObjectFilter.fromMap((value as Map).cast<String, dynamic>()))); })(),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}
