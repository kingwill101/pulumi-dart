// ignore_for_file: unused_element, unnecessary_cast

import '../agent_data_source_data_source_configuration_confluence_configuration_crawler_configuration_filter_configuration/agent_data_source_data_source_configuration_confluence_configuration_crawler_configuration_filter_configuration.dart';

class AgentDataSourceDataSourceConfigurationConfluenceConfigurationCrawlerConfiguration {
  /// The Salesforce standard object configuration. See <span pulumi-lang-nodejs="`filterConfiguration`" pulumi-lang-dotnet="`FilterConfiguration`" pulumi-lang-go="`filterConfiguration`" pulumi-lang-python="`filter_configuration`" pulumi-lang-yaml="`filterConfiguration`" pulumi-lang-java="`filterConfiguration`">`filter_configuration`</span> block for details.
  final AgentDataSourceDataSourceConfigurationConfluenceConfigurationCrawlerConfigurationFilterConfiguration?
      filterConfiguration;

  AgentDataSourceDataSourceConfigurationConfluenceConfigurationCrawlerConfiguration({
    this.filterConfiguration,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final filterConfigurationValue = filterConfiguration;
    if (filterConfigurationValue != null) {
      map['filterConfiguration'] = filterConfigurationValue.toMap();
    }
    return map;
  }

  factory AgentDataSourceDataSourceConfigurationConfluenceConfigurationCrawlerConfiguration.fromMap(
      Map<String, dynamic> map) {
    return AgentDataSourceDataSourceConfigurationConfluenceConfigurationCrawlerConfiguration(
      filterConfiguration: map['filterConfiguration'] == null
          ? null
          : AgentDataSourceDataSourceConfigurationConfluenceConfigurationCrawlerConfigurationFilterConfiguration
              .fromMap(
                  (map['filterConfiguration'] as Map).cast<String, dynamic>()),
    );
  }
}
