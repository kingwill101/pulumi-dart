// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'daemon_task_definition_container_definition_log_configuration_secret_option.dart';

class DaemonTaskDefinitionContainerDefinitionLogConfiguration {
  /// Log driver to use for the container. Valid values: `json-file`, `syslog`, `journald`, `gelf`, `fluentd`, `awslogs`, `splunk`, `awsfirelens`.
  final pulumi.Input<String> logDriver;
  /// Configuration options to send to the log driver.
  final pulumi.Input<Map<String, String>>? options;
  /// Secrets to pass to the log configuration. Detailed below.
  final pulumi.Input<List<DaemonTaskDefinitionContainerDefinitionLogConfigurationSecretOption>>? secretOptions;

  /// Creates a new [DaemonTaskDefinitionContainerDefinitionLogConfiguration].
  /// [logDriver] Log driver to use for the container. Valid values: `json-file`, `syslog`, `journald`, `gelf`, `fluentd`, `awslogs`, `splunk`, `awsfirelens`.
  /// [options] Configuration options to send to the log driver.
  /// [secretOptions] Secrets to pass to the log configuration. Detailed below.
  const DaemonTaskDefinitionContainerDefinitionLogConfiguration({
    required this.logDriver,
    this.options,
    this.secretOptions,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'logDriver': logDriver,
      'options': ?options,
      'secretOptions': ?pulumi.Input.mapOptionalInputValue<List<DaemonTaskDefinitionContainerDefinitionLogConfigurationSecretOption>, List<Map<String, dynamic>>>(secretOptions, (value) => pulumi.Input.encodeList<DaemonTaskDefinitionContainerDefinitionLogConfigurationSecretOption, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory DaemonTaskDefinitionContainerDefinitionLogConfiguration.fromMap(Map<String, dynamic> map) {
    return DaemonTaskDefinitionContainerDefinitionLogConfiguration(
      logDriver: pulumi.Input.fromValue(map['logDriver'] as String),
      options: (() { final guardedValue = map['options']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      secretOptions: (() { final guardedValue = map['secretOptions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<DaemonTaskDefinitionContainerDefinitionLogConfigurationSecretOption>(guardedValue, (value) => DaemonTaskDefinitionContainerDefinitionLogConfigurationSecretOption.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
