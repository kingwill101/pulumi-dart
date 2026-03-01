// ignore_for_file: unused_element, unnecessary_cast

import 'agent_data_source_data_source_configuration_confluence_configuration_crawler_configuration.dart';
import 'agent_data_source_data_source_configuration_confluence_configuration_source_configuration.dart';

class AgentDataSourceDataSourceConfigurationConfluenceConfiguration {
  final AgentDataSourceDataSourceConfigurationConfluenceConfigurationCrawlerConfiguration? crawlerConfiguration;
  final AgentDataSourceDataSourceConfigurationConfluenceConfigurationSourceConfiguration? sourceConfiguration;

  /// Creates a new [AgentDataSourceDataSourceConfigurationConfluenceConfiguration].
  /// [crawlerConfiguration] Optional.
  /// [sourceConfiguration] Optional.
  AgentDataSourceDataSourceConfigurationConfluenceConfiguration({
    this.crawlerConfiguration,
    this.sourceConfiguration,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'crawlerConfiguration': ?crawlerConfiguration == null ? null : crawlerConfiguration!.toMap(),
      'sourceConfiguration': ?sourceConfiguration == null ? null : sourceConfiguration!.toMap(),
    };
  }

  factory AgentDataSourceDataSourceConfigurationConfluenceConfiguration.fromMap(Map<String, dynamic> map) {
    return AgentDataSourceDataSourceConfigurationConfluenceConfiguration(
      crawlerConfiguration: map['crawlerConfiguration'] == null ? null : AgentDataSourceDataSourceConfigurationConfluenceConfigurationCrawlerConfiguration.fromMap((map['crawlerConfiguration'] as Map).cast<String, dynamic>()),
      sourceConfiguration: map['sourceConfiguration'] == null ? null : AgentDataSourceDataSourceConfigurationConfluenceConfigurationSourceConfiguration.fromMap((map['sourceConfiguration'] as Map).cast<String, dynamic>()),
    );
  }
}

