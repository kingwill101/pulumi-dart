// ignore_for_file: unused_element, unnecessary_cast

import '../agent_data_source_data_source_configuration_confluence_configuration_crawler_configuration/agent_data_source_data_source_configuration_confluence_configuration_crawler_configuration.dart';
import '../agent_data_source_data_source_configuration_confluence_configuration_source_configuration/agent_data_source_data_source_configuration_confluence_configuration_source_configuration.dart';

class AgentDataSourceDataSourceConfigurationConfluenceConfiguration {
  final AgentDataSourceDataSourceConfigurationConfluenceConfigurationCrawlerConfiguration?
      crawlerConfiguration;
  final AgentDataSourceDataSourceConfigurationConfluenceConfigurationSourceConfiguration?
      sourceConfiguration;

  AgentDataSourceDataSourceConfigurationConfluenceConfiguration({
    this.crawlerConfiguration,
    this.sourceConfiguration,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final crawlerConfigurationValue = crawlerConfiguration;
    if (crawlerConfigurationValue != null) {
      map['crawlerConfiguration'] = crawlerConfigurationValue.toMap();
    }
    final sourceConfigurationValue = sourceConfiguration;
    if (sourceConfigurationValue != null) {
      map['sourceConfiguration'] = sourceConfigurationValue.toMap();
    }
    return map;
  }

  factory AgentDataSourceDataSourceConfigurationConfluenceConfiguration.fromMap(
      Map<String, dynamic> map) {
    return AgentDataSourceDataSourceConfigurationConfluenceConfiguration(
      crawlerConfiguration: map['crawlerConfiguration'] == null
          ? null
          : AgentDataSourceDataSourceConfigurationConfluenceConfigurationCrawlerConfiguration
              .fromMap(
                  (map['crawlerConfiguration'] as Map).cast<String, dynamic>()),
      sourceConfiguration: map['sourceConfiguration'] == null
          ? null
          : AgentDataSourceDataSourceConfigurationConfluenceConfigurationSourceConfiguration
              .fromMap(
                  (map['sourceConfiguration'] as Map).cast<String, dynamic>()),
    );
  }
}
