// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'agent_data_source_data_source_configuration_share_point_configuration_crawler_configuration.dart';
import 'agent_data_source_data_source_configuration_share_point_configuration_source_configuration.dart';

class AgentDataSourceDataSourceConfigurationSharePointConfiguration {
  final pulumi.Input<AgentDataSourceDataSourceConfigurationSharePointConfigurationCrawlerConfiguration>? crawlerConfiguration;
  final pulumi.Input<AgentDataSourceDataSourceConfigurationSharePointConfigurationSourceConfiguration>? sourceConfiguration;

  /// Creates a new [AgentDataSourceDataSourceConfigurationSharePointConfiguration].
  /// [crawlerConfiguration] Optional.
  /// [sourceConfiguration] Optional.
  AgentDataSourceDataSourceConfigurationSharePointConfiguration({
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
      crawlerConfiguration: map['crawlerConfiguration'] == null ? null : ((AgentDataSourceDataSourceConfigurationSharePointConfigurationCrawlerConfiguration.fromMap((map['crawlerConfiguration']! as Map).cast<String, dynamic>())).input()).input(),
      sourceConfiguration: map['sourceConfiguration'] == null ? null : ((AgentDataSourceDataSourceConfigurationSharePointConfigurationSourceConfiguration.fromMap((map['sourceConfiguration']! as Map).cast<String, dynamic>())).input()).input(),
    );
  }
}

