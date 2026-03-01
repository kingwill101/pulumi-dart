// ignore_for_file: unused_element, unnecessary_cast

import 'agent_data_source_data_source_configuration_salesforce_configuration_crawler_configuration_filter_configuration.dart';

class AgentDataSourceDataSourceConfigurationSalesforceConfigurationCrawlerConfiguration {
  /// The Salesforce standard object configuration. See `filter_configuration` block for details.
  final AgentDataSourceDataSourceConfigurationSalesforceConfigurationCrawlerConfigurationFilterConfiguration? filterConfiguration;

  /// Creates a new [AgentDataSourceDataSourceConfigurationSalesforceConfigurationCrawlerConfiguration].
  /// [filterConfiguration] The Salesforce standard object configuration. See `filter_configuration` block for details.
  AgentDataSourceDataSourceConfigurationSalesforceConfigurationCrawlerConfiguration({
    this.filterConfiguration,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'filterConfiguration': ?filterConfiguration == null ? null : filterConfiguration!.toMap(),
    };
  }

  factory AgentDataSourceDataSourceConfigurationSalesforceConfigurationCrawlerConfiguration.fromMap(Map<String, dynamic> map) {
    return AgentDataSourceDataSourceConfigurationSalesforceConfigurationCrawlerConfiguration(
      filterConfiguration: map['filterConfiguration'] == null ? null : AgentDataSourceDataSourceConfigurationSalesforceConfigurationCrawlerConfigurationFilterConfiguration.fromMap((map['filterConfiguration'] as Map).cast<String, dynamic>()),
    );
  }
}

