// ignore_for_file: unused_element, unnecessary_cast

import '../cluster_configuration_execute_command_configuration_log_configuration/cluster_configuration_execute_command_configuration_log_configuration.dart';

class ClusterConfigurationExecuteCommandConfiguration {
  /// AWS Key Management Service key ID to encrypt the data between the local client and the container.
  final String? kmsKeyId;

  /// Log configuration for the results of the execute command actions. Required when <span pulumi-lang-nodejs="`logging`" pulumi-lang-dotnet="`Logging`" pulumi-lang-go="`logging`" pulumi-lang-python="`logging`" pulumi-lang-yaml="`logging`" pulumi-lang-java="`logging`">`logging`</span> is `OVERRIDE`. See <span pulumi-lang-nodejs="`logConfiguration`" pulumi-lang-dotnet="`LogConfiguration`" pulumi-lang-go="`logConfiguration`" pulumi-lang-python="`log_configuration`" pulumi-lang-yaml="`logConfiguration`" pulumi-lang-java="`logConfiguration`">`log_configuration`</span> Block for details.
  final ClusterConfigurationExecuteCommandConfigurationLogConfiguration?
      logConfiguration;

  /// Log setting to use for redirecting logs for your execute command results. Valid values: `NONE`, `DEFAULT`, `OVERRIDE`.
  final String? logging;

  ClusterConfigurationExecuteCommandConfiguration({
    this.kmsKeyId,
    this.logConfiguration,
    this.logging,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final kmsKeyIdValue = kmsKeyId;
    if (kmsKeyIdValue != null) {
      map['kmsKeyId'] = kmsKeyIdValue;
    }
    final logConfigurationValue = logConfiguration;
    if (logConfigurationValue != null) {
      map['logConfiguration'] = logConfigurationValue.toMap();
    }
    final loggingValue = logging;
    if (loggingValue != null) {
      map['logging'] = loggingValue;
    }
    return map;
  }

  factory ClusterConfigurationExecuteCommandConfiguration.fromMap(
      Map<String, dynamic> map) {
    return ClusterConfigurationExecuteCommandConfiguration(
      kmsKeyId: map['kmsKeyId'] == null ? null : map['kmsKeyId'] as String,
      logConfiguration: map['logConfiguration'] == null
          ? null
          : ClusterConfigurationExecuteCommandConfigurationLogConfiguration
              .fromMap(
                  (map['logConfiguration'] as Map).cast<String, dynamic>()),
      logging: map['logging'] == null ? null : map['logging'] as String,
    );
  }
}
