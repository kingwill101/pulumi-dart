// ignore_for_file: unused_element, unnecessary_cast

import 'agent_data_source_data_source_configuration_confluence_configuration_crawler_configuration_filter_configuration.dart';

class AgentDataSourceDataSourceConfigurationConfluenceConfigurationCrawlerConfiguration {
  /// The Salesforce standard object configuration. See `filter_configuration` block for details.
  final AgentDataSourceDataSourceConfigurationConfluenceConfigurationCrawlerConfigurationFilterConfiguration?
      filterConfiguration;

  /// Creates a new [AgentDataSourceDataSourceConfigurationConfluenceConfigurationCrawlerConfiguration].
  /// [filterConfiguration] The Salesforce standard object configuration. See `filter_configuration` block for details.
  AgentDataSourceDataSourceConfigurationConfluenceConfigurationCrawlerConfiguration({
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

  factory AgentDataSourceDataSourceConfigurationConfluenceConfigurationCrawlerConfiguration.fromMap(
      Map<String, dynamic> map) {
    return AgentDataSourceDataSourceConfigurationConfluenceConfigurationCrawlerConfiguration(
      filterConfiguration: map['filterConfiguration'] == null
          ? null
          : AgentDataSourceDataSourceConfigurationConfluenceConfigurationCrawlerConfigurationFilterConfiguration
              .fromMap(
                  (map['filterConfiguration'] as Map).cast<String, dynamic>()),
    );
  }
}
