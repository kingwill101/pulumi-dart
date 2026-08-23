// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_job_definition_node_property_node_range_property_container_log_configuration_secret_option.dart';

class GetJobDefinitionNodePropertyNodeRangePropertyContainerLogConfiguration {
  /// Log driver to use for the container.
  final pulumi.Input<String> logDriver;
  /// Configuration options to send to the log driver.
  final pulumi.Input<Map<String, String>> options;
  /// Secrets to pass to the log configuration. See `secretOptions` below.
  final pulumi.Input<List<GetJobDefinitionNodePropertyNodeRangePropertyContainerLogConfigurationSecretOption>> secretOptions;

  /// Creates a new [GetJobDefinitionNodePropertyNodeRangePropertyContainerLogConfiguration].
  /// [logDriver] Log driver to use for the container.
  /// [options] Configuration options to send to the log driver.
  /// [secretOptions] Secrets to pass to the log configuration. See `secretOptions` below.
  const GetJobDefinitionNodePropertyNodeRangePropertyContainerLogConfiguration({
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
      logDriver: pulumi.Input.fromValue(map['logDriver'] as String),
      options: pulumi.Input.fromValue((map['options'] as Map).cast<String, String>()),
      secretOptions: pulumi.Input.fromValue(pulumi.Input.decodeList<GetJobDefinitionNodePropertyNodeRangePropertyContainerLogConfigurationSecretOption>(map['secretOptions']!, (value) => GetJobDefinitionNodePropertyNodeRangePropertyContainerLogConfigurationSecretOption.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}
