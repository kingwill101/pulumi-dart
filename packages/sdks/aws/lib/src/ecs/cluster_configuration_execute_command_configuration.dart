// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cluster_configuration_execute_command_configuration_log_configuration.dart';

class ClusterConfigurationExecuteCommandConfiguration {
  /// KMS key ID to encrypt the data between the local client and the container.
  final pulumi.Input<String?>? kmsKeyId;
  /// Log configuration for the results of the execute command actions. Required when `logging` is `OVERRIDE`. See `logConfiguration` Block for details.
  final pulumi.Input<ClusterConfigurationExecuteCommandConfigurationLogConfiguration?>? logConfiguration;
  /// Log setting to use for redirecting logs for your execute command results. Valid values: `NONE`, `DEFAULT`, `OVERRIDE`.
  final pulumi.Input<String?>? logging;

  /// Creates a new [ClusterConfigurationExecuteCommandConfiguration].
  /// [kmsKeyId] KMS key ID to encrypt the data between the local client and the container.
  /// [logConfiguration] Log configuration for the results of the execute command actions. Required when `logging` is `OVERRIDE`. See `logConfiguration` Block for details.
  /// [logging] Log setting to use for redirecting logs for your execute command results. Valid values: `NONE`, `DEFAULT`, `OVERRIDE`.
  const ClusterConfigurationExecuteCommandConfiguration({
    this.kmsKeyId,
    this.logConfiguration,
    this.logging,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'kmsKeyId': ?kmsKeyId,
      'logConfiguration': ?pulumi.Input.mapOptionalInputValue<ClusterConfigurationExecuteCommandConfigurationLogConfiguration, Map<String, dynamic>>(logConfiguration, (value) => value.toMap()),
      'logging': ?logging,
    };
  }

  factory ClusterConfigurationExecuteCommandConfiguration.fromMap(Map<String, dynamic> map) {
    return ClusterConfigurationExecuteCommandConfiguration(
      kmsKeyId: (() { final guardedValue = map['kmsKeyId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      logConfiguration: (() { final guardedValue = map['logConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ClusterConfigurationExecuteCommandConfigurationLogConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      logging: (() { final guardedValue = map['logging']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
