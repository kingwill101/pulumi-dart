// ignore_for_file: unused_element, unnecessary_cast

import '../agent_data_source_data_source_configuration_salesforce_configuration_crawler_configuration_filter_configuration/agent_data_source_data_source_configuration_salesforce_configuration_crawler_configuration_filter_configuration.dart';

class AgentDataSourceDataSourceConfigurationSalesforceConfigurationCrawlerConfiguration {
  /// The Salesforce standard object configuration. See `filter_configuration` block for details.
  final AgentDataSourceDataSourceConfigurationSalesforceConfigurationCrawlerConfigurationFilterConfiguration?
      filterConfiguration;

  AgentDataSourceDataSourceConfigurationSalesforceConfigurationCrawlerConfiguration({
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

  factory AgentDataSourceDataSourceConfigurationSalesforceConfigurationCrawlerConfiguration.fromMap(
      Map<String, dynamic> map) {
    return AgentDataSourceDataSourceConfigurationSalesforceConfigurationCrawlerConfiguration(
      filterConfiguration: map['filterConfiguration'] == null
          ? null
          : AgentDataSourceDataSourceConfigurationSalesforceConfigurationCrawlerConfigurationFilterConfiguration
              .fromMap(
                  (map['filterConfiguration'] as Map).cast<String, dynamic>()),
    );
  }
}
