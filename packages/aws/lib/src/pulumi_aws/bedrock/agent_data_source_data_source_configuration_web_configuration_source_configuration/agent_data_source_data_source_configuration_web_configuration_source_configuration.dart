// ignore_for_file: unused_element, unnecessary_cast

import '../agent_data_source_data_source_configuration_web_configuration_source_configuration_url_configuration/agent_data_source_data_source_configuration_web_configuration_source_configuration_url_configuration.dart';

class AgentDataSourceDataSourceConfigurationWebConfigurationSourceConfiguration {
  /// The URL configuration of your web data source. See <span pulumi-lang-nodejs="`urlConfiguration`" pulumi-lang-dotnet="`UrlConfiguration`" pulumi-lang-go="`urlConfiguration`" pulumi-lang-python="`url_configuration`" pulumi-lang-yaml="`urlConfiguration`" pulumi-lang-java="`urlConfiguration`">`url_configuration`</span> block for details.
  final AgentDataSourceDataSourceConfigurationWebConfigurationSourceConfigurationUrlConfiguration
      urlConfiguration;

  AgentDataSourceDataSourceConfigurationWebConfigurationSourceConfiguration({
    required this.urlConfiguration,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['urlConfiguration'] = urlConfiguration.toMap();
    return map;
  }

  factory AgentDataSourceDataSourceConfigurationWebConfigurationSourceConfiguration.fromMap(
      Map<String, dynamic> map) {
    return AgentDataSourceDataSourceConfigurationWebConfigurationSourceConfiguration(
      urlConfiguration:
          AgentDataSourceDataSourceConfigurationWebConfigurationSourceConfigurationUrlConfiguration
              .fromMap(
                  (map['urlConfiguration'] as Map).cast<String, dynamic>()),
    );
  }
}
