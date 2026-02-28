// ignore_for_file: unused_element, unnecessary_cast

import 'agent_data_source_data_source_configuration_web_configuration_crawler_configuration.dart';
import 'agent_data_source_data_source_configuration_web_configuration_source_configuration.dart';

class AgentDataSourceDataSourceConfigurationWebConfiguration {
  final AgentDataSourceDataSourceConfigurationWebConfigurationCrawlerConfiguration?
      crawlerConfiguration;
  final AgentDataSourceDataSourceConfigurationWebConfigurationSourceConfiguration?
      sourceConfiguration;

  /// Creates a new [AgentDataSourceDataSourceConfigurationWebConfiguration].
  /// [crawlerConfiguration] Optional.
  /// [sourceConfiguration] Optional.
  AgentDataSourceDataSourceConfigurationWebConfiguration({
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

  factory AgentDataSourceDataSourceConfigurationWebConfiguration.fromMap(
      Map<String, dynamic> map) {
    return AgentDataSourceDataSourceConfigurationWebConfiguration(
      crawlerConfiguration: map['crawlerConfiguration'] == null
          ? null
          : AgentDataSourceDataSourceConfigurationWebConfigurationCrawlerConfiguration
              .fromMap(
                  (map['crawlerConfiguration'] as Map).cast<String, dynamic>()),
      sourceConfiguration: map['sourceConfiguration'] == null
          ? null
          : AgentDataSourceDataSourceConfigurationWebConfigurationSourceConfiguration
              .fromMap(
                  (map['sourceConfiguration'] as Map).cast<String, dynamic>()),
    );
  }
}
