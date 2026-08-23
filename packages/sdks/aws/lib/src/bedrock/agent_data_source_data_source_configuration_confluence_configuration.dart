// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'agent_data_source_data_source_configuration_confluence_configuration_crawler_configuration.dart';
import 'agent_data_source_data_source_configuration_confluence_configuration_source_configuration.dart';

class AgentDataSourceDataSourceConfigurationConfluenceConfiguration {
  final pulumi.Input<AgentDataSourceDataSourceConfigurationConfluenceConfigurationCrawlerConfiguration>? crawlerConfiguration;
  final pulumi.Input<AgentDataSourceDataSourceConfigurationConfluenceConfigurationSourceConfiguration>? sourceConfiguration;

  /// Creates a new [AgentDataSourceDataSourceConfigurationConfluenceConfiguration].
  /// [crawlerConfiguration] Optional.
  /// [sourceConfiguration] Optional.
  const AgentDataSourceDataSourceConfigurationConfluenceConfiguration({
    this.crawlerConfiguration,
    this.sourceConfiguration,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'crawlerConfiguration': ?pulumi.Input.mapOptionalInputValue<AgentDataSourceDataSourceConfigurationConfluenceConfigurationCrawlerConfiguration, Map<String, dynamic>>(crawlerConfiguration, (value) => value.toMap()),
      'sourceConfiguration': ?pulumi.Input.mapOptionalInputValue<AgentDataSourceDataSourceConfigurationConfluenceConfigurationSourceConfiguration, Map<String, dynamic>>(sourceConfiguration, (value) => value.toMap()),
    };
  }

  factory AgentDataSourceDataSourceConfigurationConfluenceConfiguration.fromMap(Map<String, dynamic> map) {
    return AgentDataSourceDataSourceConfigurationConfluenceConfiguration(
      crawlerConfiguration: (() { final guardedValue = map['crawlerConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AgentDataSourceDataSourceConfigurationConfluenceConfigurationCrawlerConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      sourceConfiguration: (() { final guardedValue = map['sourceConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AgentDataSourceDataSourceConfigurationConfluenceConfigurationSourceConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
