// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'agent_data_source_data_source_configuration_confluence_configuration_crawler_configuration_filter_configuration.dart';

class AgentDataSourceDataSourceConfigurationConfluenceConfigurationCrawlerConfiguration {
  /// Object configuration used to filter crawled content. See `data_source_configuration.share_point_configuration.crawler_configuration.filter_configuration` Block for details.
  final pulumi.Input<AgentDataSourceDataSourceConfigurationConfluenceConfigurationCrawlerConfigurationFilterConfiguration?>? filterConfiguration;

  /// Creates a new [AgentDataSourceDataSourceConfigurationConfluenceConfigurationCrawlerConfiguration].
  /// [filterConfiguration] Object configuration used to filter crawled content. See `data_source_configuration.share_point_configuration.crawler_configuration.filter_configuration` Block for details.
  const AgentDataSourceDataSourceConfigurationConfluenceConfigurationCrawlerConfiguration({
    this.filterConfiguration,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'filterConfiguration': ?pulumi.Input.mapOptionalInputValue<AgentDataSourceDataSourceConfigurationConfluenceConfigurationCrawlerConfigurationFilterConfiguration, Map<String, dynamic>>(filterConfiguration, (value) => value.toMap()),
    };
  }

  factory AgentDataSourceDataSourceConfigurationConfluenceConfigurationCrawlerConfiguration.fromMap(Map<String, dynamic> map) {
    return AgentDataSourceDataSourceConfigurationConfluenceConfigurationCrawlerConfiguration(
      filterConfiguration: (() { final guardedValue = map['filterConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AgentDataSourceDataSourceConfigurationConfluenceConfigurationCrawlerConfigurationFilterConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
