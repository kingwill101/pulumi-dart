// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_job_definition_node_property_node_range_property_container_log_configuration_secret_option.dart';

class GetJobDefinitionNodePropertyNodeRangePropertyContainerLogConfiguration {
  /// The log driver to use for the container.
  final pulumi.Input<String> logDriver;
  /// The configuration options to send to the log driver.
  final pulumi.Input<Map<String, String>> options;
  /// The secrets to pass to the log configuration.
  final pulumi.Input<List<GetJobDefinitionNodePropertyNodeRangePropertyContainerLogConfigurationSecretOption>> secretOptions;

  /// Creates a new [GetJobDefinitionNodePropertyNodeRangePropertyContainerLogConfiguration].
  /// [logDriver] The log driver to use for the container.
  /// [options] The configuration options to send to the log driver.
  /// [secretOptions] The secrets to pass to the log configuration.
  GetJobDefinitionNodePropertyNodeRangePropertyContainerLogConfiguration({
    required this.logDriver,
    required this.options,
    required this.secretOptions,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'logDriver': logDriver,
      'options': options,
      'secretOptions': pulumi.Input.mapInputValue<List<GetJobDefinitionNodePropertyNodeRangePropertyContainerLogConfigurationSecretOption>, List<Map<String, dynamic>>>(secretOptions, (value) => pulumi.Input.encodeList<GetJobDefinitionNodePropertyNodeRangePropertyContainerLogConfigurationSecretOption, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GetJobDefinitionNodePropertyNodeRangePropertyContainerLogConfiguration.fromMap(Map<String, dynamic> map) {
    return GetJobDefinitionNodePropertyNodeRangePropertyContainerLogConfiguration(
      logDriver: (map['logDriver'] as String).input(),
      options: ((map['options'] as Map).cast<String, String>()).input(),
      secretOptions: (pulumi.Input.decodeList<GetJobDefinitionNodePropertyNodeRangePropertyContainerLogConfigurationSecretOption>(map['secretOptions'], (value) => GetJobDefinitionNodePropertyNodeRangePropertyContainerLogConfigurationSecretOption.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

