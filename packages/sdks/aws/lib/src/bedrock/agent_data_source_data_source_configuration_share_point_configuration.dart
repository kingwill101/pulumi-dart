// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'agent_data_source_data_source_configuration_share_point_configuration_crawler_configuration.dart';
import 'agent_data_source_data_source_configuration_share_point_configuration_source_configuration.dart';

class AgentDataSourceDataSourceConfigurationSharePointConfiguration {
  /// Configuration for SharePoint content. See `data_source_configuration.share_point_configuration.crawler_configuration` Block for details.
  final pulumi.Input<AgentDataSourceDataSourceConfigurationSharePointConfigurationCrawlerConfiguration?>? crawlerConfiguration;
  /// Endpoint information to connect to your SharePoint data source. See `data_source_configuration.share_point_configuration.source_configuration` Block for details.
  final pulumi.Input<AgentDataSourceDataSourceConfigurationSharePointConfigurationSourceConfiguration?>? sourceConfiguration;

  /// Creates a new [AgentDataSourceDataSourceConfigurationSharePointConfiguration].
  /// [crawlerConfiguration] Configuration for SharePoint content. See `data_source_configuration.share_point_configuration.crawler_configuration` Block for details.
  /// [sourceConfiguration] Endpoint information to connect to your SharePoint data source. See `data_source_configuration.share_point_configuration.source_configuration` Block for details.
  const AgentDataSourceDataSourceConfigurationSharePointConfiguration({
    this.crawlerConfiguration,
    this.sourceConfiguration,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'crawlerConfiguration': ?pulumi.Input.mapOptionalInputValue<AgentDataSourceDataSourceConfigurationSharePointConfigurationCrawlerConfiguration, Map<String, dynamic>>(crawlerConfiguration, (value) => value.toMap()),
      'sourceConfiguration': ?pulumi.Input.mapOptionalInputValue<AgentDataSourceDataSourceConfigurationSharePointConfigurationSourceConfiguration, Map<String, dynamic>>(sourceConfiguration, (value) => value.toMap()),
    };
  }

  factory AgentDataSourceDataSourceConfigurationSharePointConfiguration.fromMap(Map<String, dynamic> map) {
    return AgentDataSourceDataSourceConfigurationSharePointConfiguration(
      crawlerConfiguration: (() { final guardedValue = map['crawlerConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AgentDataSourceDataSourceConfigurationSharePointConfigurationCrawlerConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      sourceConfiguration: (() { final guardedValue = map['sourceConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AgentDataSourceDataSourceConfigurationSharePointConfigurationSourceConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
