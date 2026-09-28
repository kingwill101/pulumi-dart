// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'agent_data_source_data_source_configuration_web_configuration_crawler_configuration.dart';
import 'agent_data_source_data_source_configuration_web_configuration_source_configuration.dart';

class AgentDataSourceDataSourceConfigurationWebConfiguration {
  /// Configuration for web content. See `data_source_configuration.web_configuration.crawler_configuration` Block for details.
  final pulumi.Input<AgentDataSourceDataSourceConfigurationWebConfigurationCrawlerConfiguration?>? crawlerConfiguration;
  /// Endpoint information to connect to your web data source. See `data_source_configuration.web_configuration.source_configuration` Block for details.
  final pulumi.Input<AgentDataSourceDataSourceConfigurationWebConfigurationSourceConfiguration?>? sourceConfiguration;

  /// Creates a new [AgentDataSourceDataSourceConfigurationWebConfiguration].
  /// [crawlerConfiguration] Configuration for web content. See `data_source_configuration.web_configuration.crawler_configuration` Block for details.
  /// [sourceConfiguration] Endpoint information to connect to your web data source. See `data_source_configuration.web_configuration.source_configuration` Block for details.
  const AgentDataSourceDataSourceConfigurationWebConfiguration({
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
      crawlerConfiguration: (() { final guardedValue = map['crawlerConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AgentDataSourceDataSourceConfigurationWebConfigurationCrawlerConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      sourceConfiguration: (() { final guardedValue = map['sourceConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AgentDataSourceDataSourceConfigurationWebConfigurationSourceConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
