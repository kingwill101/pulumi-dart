// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'execute_command_log_configuration.dart';

/// Definition of ExecuteCommandConfiguration
class ExecuteCommandConfiguration {
  /// Specify an KMSlong key ID to encrypt the data between the local client and the container.
  final pulumi.Input<String>? kmsKeyId;
  /// The log configuration for the results of the execute command actions. The logs can be sent to CloudWatch Logs or an Amazon S3 bucket. When ``logging=OVERRIDE`` is specified, a ``logConfiguration`` must be provided. The log configuration for the results of the execute command actions. The logs can be sent to CloudWatch Logs or an Amazon S3 bucket.
  final pulumi.Input<ExecuteCommandLogConfiguration>? logConfiguration;
  /// The log setting to use for redirecting logs for your execute command results. The following log settings are available.  +   ``NONE``: The execute command session is not logged.  +   ``DEFAULT``: The ``awslogs`` configuration in the task definition is used. If no logging parameter is specified, it defaults to this value. If no ``awslogs`` log driver is configured in the task definition, the output won't be logged.  +   ``OVERRIDE``: Specify the logging details as a part of ``logConfiguration``. If the ``OVERRIDE`` logging option is specified, the ``logConfiguration`` is required.
  final pulumi.Input<String>? logging;

  /// Creates a new [ExecuteCommandConfiguration].
  /// [kmsKeyId] Specify an KMSlong key ID to encrypt the data between the local client and the container.
  /// [logConfiguration] The log configuration for the results of the execute command actions. The logs can be sent to CloudWatch Logs or an Amazon S3 bucket. When ``logging=OVERRIDE`` is specified, a ``logConfiguration`` must be provided. The log configuration for the results of the execute command actions. The logs can be sent to CloudWatch Logs or an Amazon S3 bucket.
  /// [logging] The log setting to use for redirecting logs for your execute command results. The following log settings are available.  +   ``NONE``: The execute command session is not logged.  +   ``DEFAULT``: The ``awslogs`` configuration in the task definition is used. If no logging parameter is specified, it defaults to this value. If no ``awslogs`` log driver is configured in the task definition, the output won't be logged.  +   ``OVERRIDE``: Specify the logging details as a part of ``logConfiguration``. If the ``OVERRIDE`` logging option is specified, the ``logConfiguration`` is required.
  ExecuteCommandConfiguration({
    this.kmsKeyId,
    this.logConfiguration,
    this.logging,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'kmsKeyId': ?kmsKeyId,
      'logConfiguration': ?pulumi.Input.mapOptionalInputValue<ExecuteCommandLogConfiguration, Map<String, dynamic>>(logConfiguration, (value) => value.toMap()),
      'logging': ?logging,
    };
  }

  factory ExecuteCommandConfiguration.fromMap(Map<String, dynamic> map) {
    return ExecuteCommandConfiguration(
      kmsKeyId: map['kmsKeyId'] == null ? null : (map['kmsKeyId']! as String).input(),
      logConfiguration: map['logConfiguration'] == null ? null : (ExecuteCommandLogConfiguration.fromMap((map['logConfiguration']! as Map).cast<String, dynamic>())).input(),
      logging: map['logging'] == null ? null : (map['logging']! as String).input(),
    );
  }
}

