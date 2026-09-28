// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'agent_data_source_data_source_configuration_salesforce_configuration_crawler_configuration.dart';
import 'agent_data_source_data_source_configuration_salesforce_configuration_source_configuration.dart';

class AgentDataSourceDataSourceConfigurationSalesforceConfiguration {
  /// Configuration for Salesforce content. See `data_source_configuration.salesforce_configuration.crawler_configuration` Block for details.
  final pulumi.Input<AgentDataSourceDataSourceConfigurationSalesforceConfigurationCrawlerConfiguration?>? crawlerConfiguration;
  /// Endpoint information to connect to your Salesforce data source. See `data_source_configuration.salesforce_configuration.source_configuration` Block for details.
  final pulumi.Input<AgentDataSourceDataSourceConfigurationSalesforceConfigurationSourceConfiguration?>? sourceConfiguration;

  /// Creates a new [AgentDataSourceDataSourceConfigurationSalesforceConfiguration].
  /// [crawlerConfiguration] Configuration for Salesforce content. See `data_source_configuration.salesforce_configuration.crawler_configuration` Block for details.
  /// [sourceConfiguration] Endpoint information to connect to your Salesforce data source. See `data_source_configuration.salesforce_configuration.source_configuration` Block for details.
  const AgentDataSourceDataSourceConfigurationSalesforceConfiguration({
    this.crawlerConfiguration,
    this.sourceConfiguration,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'crawlerConfiguration': ?pulumi.Input.mapOptionalInputValue<AgentDataSourceDataSourceConfigurationSalesforceConfigurationCrawlerConfiguration, Map<String, dynamic>>(crawlerConfiguration, (value) => value.toMap()),
      'sourceConfiguration': ?pulumi.Input.mapOptionalInputValue<AgentDataSourceDataSourceConfigurationSalesforceConfigurationSourceConfiguration, Map<String, dynamic>>(sourceConfiguration, (value) => value.toMap()),
    };
  }

  factory AgentDataSourceDataSourceConfigurationSalesforceConfiguration.fromMap(Map<String, dynamic> map) {
    return AgentDataSourceDataSourceConfigurationSalesforceConfiguration(
      crawlerConfiguration: (() { final guardedValue = map['crawlerConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AgentDataSourceDataSourceConfigurationSalesforceConfigurationCrawlerConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      sourceConfiguration: (() { final guardedValue = map['sourceConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AgentDataSourceDataSourceConfigurationSalesforceConfigurationSourceConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
