// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'agent_data_source_data_source_configuration_web_configuration_crawler_configuration.dart';
import 'agent_data_source_data_source_configuration_web_configuration_source_configuration.dart';

class AgentDataSourceDataSourceConfigurationWebConfiguration {
  final pulumi.Input<AgentDataSourceDataSourceConfigurationWebConfigurationCrawlerConfiguration>? crawlerConfiguration;
  final pulumi.Input<AgentDataSourceDataSourceConfigurationWebConfigurationSourceConfiguration>? sourceConfiguration;

  /// Creates a new [AgentDataSourceDataSourceConfigurationWebConfiguration].
  /// [crawlerConfiguration] Optional.
  /// [sourceConfiguration] Optional.
  AgentDataSourceDataSourceConfigurationWebConfiguration({
    this.crawlerConfiguration,
    this.sourceConfiguration,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'crawlerConfiguration': ?pulumi.Input.mapOptionalInputValue<AgentDataSourceDataSourceConfigurationWebConfigurationCrawlerConfiguration, Map<String, dynamic>>(crawlerConfiguration, (value) => value.toMap()),
      'sourceConfiguration': ?pulumi.Input.mapOptionalInputValue<AgentDataSourceDataSourceConfigurationWebConfigurationSourceConfiguration, Map<String, dynamic>>(sourceConfiguration, (value) => value.toMap()),
    };
  }

  factory AgentDataSourceDataSourceConfigurationWebConfiguration.fromMap(Map<String, dynamic> map) {
    return AgentDataSourceDataSourceConfigurationWebConfiguration(
      crawlerConfiguration: map['crawlerConfiguration'] == null ? null : (AgentDataSourceDataSourceConfigurationWebConfigurationCrawlerConfiguration.fromMap((map['crawlerConfiguration'] as Map).cast<String, dynamic>())).input(),
      sourceConfiguration: map['sourceConfiguration'] == null ? null : (AgentDataSourceDataSourceConfigurationWebConfigurationSourceConfiguration.fromMap((map['sourceConfiguration'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

