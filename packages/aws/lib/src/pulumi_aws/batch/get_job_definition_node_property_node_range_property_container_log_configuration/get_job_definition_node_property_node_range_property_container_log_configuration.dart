// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../get_job_definition_node_property_node_range_property_container_log_configuration_secret_option/get_job_definition_node_property_node_range_property_container_log_configuration_secret_option.dart';

class GetJobDefinitionNodePropertyNodeRangePropertyContainerLogConfiguration {
  /// The log driver to use for the container.
  final String logDriver;

  /// The configuration options to send to the log driver.
  final Map<String, String> options;

  /// The secrets to pass to the log configuration.
  final List<
          GetJobDefinitionNodePropertyNodeRangePropertyContainerLogConfigurationSecretOption>
      secretOptions;

  GetJobDefinitionNodePropertyNodeRangePropertyContainerLogConfiguration({
    required this.logDriver,
    required this.options,
    required this.secretOptions,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['logDriver'] = logDriver;
    map['options'] = options;
    map['secretOptions'] = Input.encodeList<
        GetJobDefinitionNodePropertyNodeRangePropertyContainerLogConfigurationSecretOption,
        Map<String, dynamic>>(secretOptions, (value) => value.toMap());
    return map;
  }

  factory GetJobDefinitionNodePropertyNodeRangePropertyContainerLogConfiguration.fromMap(
      Map<String, dynamic> map) {
    return GetJobDefinitionNodePropertyNodeRangePropertyContainerLogConfiguration(
      logDriver: map['logDriver'] as String,
      options: (map['options'] as Map).cast<String, String>(),
      secretOptions: Input.decodeList<
              GetJobDefinitionNodePropertyNodeRangePropertyContainerLogConfigurationSecretOption>(
          map['secretOptions'],
          (value) =>
              GetJobDefinitionNodePropertyNodeRangePropertyContainerLogConfigurationSecretOption
                  .fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}
