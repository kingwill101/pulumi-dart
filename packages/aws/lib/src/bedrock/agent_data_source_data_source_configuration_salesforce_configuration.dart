// ignore_for_file: unused_element, unnecessary_cast

import 'agent_data_source_data_source_configuration_salesforce_configuration_crawler_configuration.dart';
import 'agent_data_source_data_source_configuration_salesforce_configuration_source_configuration.dart';

class AgentDataSourceDataSourceConfigurationSalesforceConfiguration {
  final AgentDataSourceDataSourceConfigurationSalesforceConfigurationCrawlerConfiguration?
      crawlerConfiguration;
  final AgentDataSourceDataSourceConfigurationSalesforceConfigurationSourceConfiguration?
      sourceConfiguration;

  /// Creates a new [AgentDataSourceDataSourceConfigurationSalesforceConfiguration].
  /// [crawlerConfiguration] Optional.
  /// [sourceConfiguration] Optional.
  AgentDataSourceDataSourceConfigurationSalesforceConfiguration({
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

  factory AgentDataSourceDataSourceConfigurationSalesforceConfiguration.fromMap(
      Map<String, dynamic> map) {
    return AgentDataSourceDataSourceConfigurationSalesforceConfiguration(
      crawlerConfiguration: map['crawlerConfiguration'] == null
          ? null
          : AgentDataSourceDataSourceConfigurationSalesforceConfigurationCrawlerConfiguration
              .fromMap(
                  (map['crawlerConfiguration'] as Map).cast<String, dynamic>()),
      sourceConfiguration: map['sourceConfiguration'] == null
          ? null
          : AgentDataSourceDataSourceConfigurationSalesforceConfigurationSourceConfiguration
              .fromMap(
                  (map['sourceConfiguration'] as Map).cast<String, dynamic>()),
    );
  }
}
