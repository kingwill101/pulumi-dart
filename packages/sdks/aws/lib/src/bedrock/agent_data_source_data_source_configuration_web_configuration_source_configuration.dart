// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'agent_data_source_data_source_configuration_web_configuration_source_configuration_url_configuration.dart';

class AgentDataSourceDataSourceConfigurationWebConfigurationSourceConfiguration {
  /// The URL configuration of your web data source. See `url_configuration` block for details.
  final pulumi.Input<AgentDataSourceDataSourceConfigurationWebConfigurationSourceConfigurationUrlConfiguration> urlConfiguration;

  /// Creates a new [AgentDataSourceDataSourceConfigurationWebConfigurationSourceConfiguration].
  /// [urlConfiguration] The URL configuration of your web data source. See `url_configuration` block for details.
  AgentDataSourceDataSourceConfigurationWebConfigurationSourceConfiguration({
    required this.urlConfiguration,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'urlConfiguration': pulumi.Input.mapInputValue<AgentDataSourceDataSourceConfigurationWebConfigurationSourceConfigurationUrlConfiguration, Map<String, dynamic>>(urlConfiguration, (value) => value.toMap()),
    };
  }

  factory AgentDataSourceDataSourceConfigurationWebConfigurationSourceConfiguration.fromMap(Map<String, dynamic> map) {
    return AgentDataSourceDataSourceConfigurationWebConfigurationSourceConfiguration(
      urlConfiguration: (AgentDataSourceDataSourceConfigurationWebConfigurationSourceConfigurationUrlConfiguration.fromMap((map['urlConfiguration'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

