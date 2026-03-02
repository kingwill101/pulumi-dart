// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'agent_data_source_data_source_configuration_confluence_configuration_crawler_configuration_filter_configuration.dart';

class AgentDataSourceDataSourceConfigurationConfluenceConfigurationCrawlerConfiguration {
  /// The Salesforce standard object configuration. See `filter_configuration` block for details.
  final pulumi.Input<AgentDataSourceDataSourceConfigurationConfluenceConfigurationCrawlerConfigurationFilterConfiguration>? filterConfiguration;

  /// Creates a new [AgentDataSourceDataSourceConfigurationConfluenceConfigurationCrawlerConfiguration].
  /// [filterConfiguration] The Salesforce standard object configuration. See `filter_configuration` block for details.
  AgentDataSourceDataSourceConfigurationConfluenceConfigurationCrawlerConfiguration({
    this.filterConfiguration,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'filterConfiguration': ?pulumi.Input.mapOptionalInputValue<AgentDataSourceDataSourceConfigurationConfluenceConfigurationCrawlerConfigurationFilterConfiguration, Map<String, dynamic>>(filterConfiguration, (value) => value.toMap()),
    };
  }

  factory AgentDataSourceDataSourceConfigurationConfluenceConfigurationCrawlerConfiguration.fromMap(Map<String, dynamic> map) {
    return AgentDataSourceDataSourceConfigurationConfluenceConfigurationCrawlerConfiguration(
      filterConfiguration: map['filterConfiguration'] == null ? null : ((AgentDataSourceDataSourceConfigurationConfluenceConfigurationCrawlerConfigurationFilterConfiguration.fromMap((map['filterConfiguration']! as Map).cast<String, dynamic>())).input()).input(),
    );
  }
}

