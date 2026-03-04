// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'agent_data_source_data_source_configuration_salesforce_configuration_crawler_configuration_filter_configuration.dart';

class AgentDataSourceDataSourceConfigurationSalesforceConfigurationCrawlerConfiguration {
  /// The Salesforce standard object configuration. See `filter_configuration` block for details.
  final pulumi.Input<
    AgentDataSourceDataSourceConfigurationSalesforceConfigurationCrawlerConfigurationFilterConfiguration
  >?
  filterConfiguration;

  /// Creates a new [AgentDataSourceDataSourceConfigurationSalesforceConfigurationCrawlerConfiguration].
  /// [filterConfiguration] The Salesforce standard object configuration. See `filter_configuration` block for details.
  AgentDataSourceDataSourceConfigurationSalesforceConfigurationCrawlerConfiguration({
    this.filterConfiguration,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'filterConfiguration':
          ?pulumi.Input.mapOptionalInputValue<
            AgentDataSourceDataSourceConfigurationSalesforceConfigurationCrawlerConfigurationFilterConfiguration,
            Map<String, dynamic>
          >(filterConfiguration, (value) => value.toMap()),
    };
  }

  factory AgentDataSourceDataSourceConfigurationSalesforceConfigurationCrawlerConfiguration.fromMap(
    Map<String, dynamic> map,
  ) {
    return AgentDataSourceDataSourceConfigurationSalesforceConfigurationCrawlerConfiguration(
      filterConfiguration: (() {
        final guardedValue = map['filterConfiguration'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          AgentDataSourceDataSourceConfigurationSalesforceConfigurationCrawlerConfigurationFilterConfiguration.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
    );
  }
}
