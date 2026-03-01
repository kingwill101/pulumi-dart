// ignore_for_file: unused_element, unnecessary_cast

import 'agent_data_source_data_source_configuration_share_point_configuration_crawler_configuration_filter_configuration.dart';

class AgentDataSourceDataSourceConfigurationSharePointConfigurationCrawlerConfiguration {
  /// The Salesforce standard object configuration. See `filter_configuration` block for details.
  final AgentDataSourceDataSourceConfigurationSharePointConfigurationCrawlerConfigurationFilterConfiguration?
  filterConfiguration;

  /// Creates a new [AgentDataSourceDataSourceConfigurationSharePointConfigurationCrawlerConfiguration].
  /// [filterConfiguration] The Salesforce standard object configuration. See `filter_configuration` block for details.
  AgentDataSourceDataSourceConfigurationSharePointConfigurationCrawlerConfiguration({
    this.filterConfiguration,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'filterConfiguration': ?filterConfiguration == null
          ? null
          : filterConfiguration!.toMap(),
    };
  }

  factory AgentDataSourceDataSourceConfigurationSharePointConfigurationCrawlerConfiguration.fromMap(
    Map<String, dynamic> map,
  ) {
    return AgentDataSourceDataSourceConfigurationSharePointConfigurationCrawlerConfiguration(
      filterConfiguration: map['filterConfiguration'] == null
          ? null
          : AgentDataSourceDataSourceConfigurationSharePointConfigurationCrawlerConfigurationFilterConfiguration.fromMap(
              (map['filterConfiguration'] as Map).cast<String, dynamic>(),
            ),
    );
  }
}
