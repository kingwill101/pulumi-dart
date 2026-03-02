// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'agent_data_source_data_source_configuration_salesforce_configuration_crawler_configuration.dart';
import 'agent_data_source_data_source_configuration_salesforce_configuration_source_configuration.dart';

class AgentDataSourceDataSourceConfigurationSalesforceConfiguration {
  final pulumi.Input<AgentDataSourceDataSourceConfigurationSalesforceConfigurationCrawlerConfiguration>? crawlerConfiguration;
  final pulumi.Input<AgentDataSourceDataSourceConfigurationSalesforceConfigurationSourceConfiguration>? sourceConfiguration;

  /// Creates a new [AgentDataSourceDataSourceConfigurationSalesforceConfiguration].
  /// [crawlerConfiguration] Optional.
  /// [sourceConfiguration] Optional.
  AgentDataSourceDataSourceConfigurationSalesforceConfiguration({
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
      crawlerConfiguration: map['crawlerConfiguration'] == null ? null : (AgentDataSourceDataSourceConfigurationSalesforceConfigurationCrawlerConfiguration.fromMap((map['crawlerConfiguration'] as Map).cast<String, dynamic>())).input(),
      sourceConfiguration: map['sourceConfiguration'] == null ? null : (AgentDataSourceDataSourceConfigurationSalesforceConfigurationSourceConfiguration.fromMap((map['sourceConfiguration'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

