// ignore_for_file: unused_element, unnecessary_cast

import '../agent_data_source_data_source_configuration_share_point_configuration_crawler_configuration_filter_configuration/agent_data_source_data_source_configuration_share_point_configuration_crawler_configuration_filter_configuration.dart';

class AgentDataSourceDataSourceConfigurationSharePointConfigurationCrawlerConfiguration {
  /// The Salesforce standard object configuration. See `filter_configuration` block for details.
  final AgentDataSourceDataSourceConfigurationSharePointConfigurationCrawlerConfigurationFilterConfiguration?
      filterConfiguration;

  AgentDataSourceDataSourceConfigurationSharePointConfigurationCrawlerConfiguration({
    this.filterConfiguration,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final filterConfigurationValue = filterConfiguration;
    if (filterConfigurationValue != null) {
      map['filterConfiguration'] = filterConfigurationValue.toMap();
    }
    return map;
  }

  factory AgentDataSourceDataSourceConfigurationSharePointConfigurationCrawlerConfiguration.fromMap(
      Map<String, dynamic> map) {
    return AgentDataSourceDataSourceConfigurationSharePointConfigurationCrawlerConfiguration(
      filterConfiguration: map['filterConfiguration'] == null
          ? null
          : AgentDataSourceDataSourceConfigurationSharePointConfigurationCrawlerConfigurationFilterConfiguration
              .fromMap(
                  (map['filterConfiguration'] as Map).cast<String, dynamic>()),
    );
  }
}
