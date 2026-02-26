// ignore_for_file: unused_element, unnecessary_cast

import '../agent_data_source_data_source_configuration_share_point_configuration_crawler_configuration/agent_data_source_data_source_configuration_share_point_configuration_crawler_configuration.dart';
import '../agent_data_source_data_source_configuration_share_point_configuration_source_configuration/agent_data_source_data_source_configuration_share_point_configuration_source_configuration.dart';

class AgentDataSourceDataSourceConfigurationSharePointConfiguration {
  final AgentDataSourceDataSourceConfigurationSharePointConfigurationCrawlerConfiguration?
      crawlerConfiguration;
  final AgentDataSourceDataSourceConfigurationSharePointConfigurationSourceConfiguration?
      sourceConfiguration;

  AgentDataSourceDataSourceConfigurationSharePointConfiguration({
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

  factory AgentDataSourceDataSourceConfigurationSharePointConfiguration.fromMap(
      Map<String, dynamic> map) {
    return AgentDataSourceDataSourceConfigurationSharePointConfiguration(
      crawlerConfiguration: map['crawlerConfiguration'] == null
          ? null
          : AgentDataSourceDataSourceConfigurationSharePointConfigurationCrawlerConfiguration
              .fromMap(
                  (map['crawlerConfiguration'] as Map).cast<String, dynamic>()),
      sourceConfiguration: map['sourceConfiguration'] == null
          ? null
          : AgentDataSourceDataSourceConfigurationSharePointConfigurationSourceConfiguration
              .fromMap(
                  (map['sourceConfiguration'] as Map).cast<String, dynamic>()),
    );
  }
}
