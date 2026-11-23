// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ContainerHealthCheck {
  /// The command that the container runs to determine whether it is healthy.
  ///
  /// The first value must be `CMD` or `CMD-SHELL`. An exit code of zero indicates success.
  ///
  /// Example: ["CMD-SHELL", "curl --fail http://localhost/health || exit 1"]
  final pulumi.Input<List<String>> command;
  /// The time, in seconds, between health checks. Valid values are from 5 through 300.
  ///
  /// Default - 30 seconds.
  final pulumi.Input<double?>? intervalSeconds;
  /// The number of consecutive failures required before the container becomes unhealthy. Valid
  /// values are from 1 through 10.
  ///
  /// Default - 3.
  final pulumi.Input<double?>? retries;
  /// The startup grace period, in seconds, during which failed checks do not count toward the retry
  /// limit. Valid values are from 0 through 300.
  ///
  /// Default - No startup grace period.
  final pulumi.Input<double?>? startPeriodSeconds;
  /// The time, in seconds, to wait for a health check to succeed. Valid values are from 2 through 60.
  ///
  /// Default - 5 seconds.
  final pulumi.Input<double?>? timeoutSeconds;

  /// Creates a new [ContainerHealthCheck].
  /// [command] The command that the container runs to determine whether it is healthy.
  /// [intervalSeconds] The time, in seconds, between health checks. Valid values are from 5 through 300.
  /// [retries] The number of consecutive failures required before the container becomes unhealthy. Valid
  /// [startPeriodSeconds] The startup grace period, in seconds, during which failed checks do not count toward the retry
  /// [timeoutSeconds] The time, in seconds, to wait for a health check to succeed. Valid values are from 2 through 60.
  const ContainerHealthCheck({
    required this.command,
    this.intervalSeconds,
    this.retries,
    this.startPeriodSeconds,
    this.timeoutSeconds,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'command': command,
      'intervalSeconds': ?intervalSeconds,
      'retries': ?retries,
      'startPeriodSeconds': ?startPeriodSeconds,
      'timeoutSeconds': ?timeoutSeconds,
    };
  }

  factory ContainerHealthCheck.fromMap(Map<String, dynamic> map) {
    return ContainerHealthCheck(
      command: pulumi.Input.fromValue((map['command'] as List).cast<String>()),
      intervalSeconds: (() { final guardedValue = map['intervalSeconds']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toDouble()); })(),
      retries: (() { final guardedValue = map['retries']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toDouble()); })(),
      startPeriodSeconds: (() { final guardedValue = map['startPeriodSeconds']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toDouble()); })(),
      timeoutSeconds: (() { final guardedValue = map['timeoutSeconds']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toDouble()); })(),
    );
  }
}
