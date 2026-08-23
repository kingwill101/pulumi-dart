// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DaemonTaskDefinitionContainerDefinitionHealthCheck {
  /// String array representing the command that the container runs to determine if it is healthy.
  final pulumi.Input<List<String>> commands;
  /// Time period in seconds between each health check execution. Valid range: 5–300.
  final pulumi.Input<int>? interval;
  /// Number of times to retry a failed health check. Valid range: 1–10.
  final pulumi.Input<int>? retries;
  /// Grace period in seconds to provide containers time to bootstrap. Valid range: 0–300.
  final pulumi.Input<int>? startPeriod;
  /// Time period in seconds to wait for a health check to succeed. Valid range: 2–60.
  final pulumi.Input<int>? timeout;

  /// Creates a new [DaemonTaskDefinitionContainerDefinitionHealthCheck].
  /// [commands] String array representing the command that the container runs to determine if it is healthy.
  /// [interval] Time period in seconds between each health check execution. Valid range: 5–300.
  /// [retries] Number of times to retry a failed health check. Valid range: 1–10.
  /// [startPeriod] Grace period in seconds to provide containers time to bootstrap. Valid range: 0–300.
  /// [timeout] Time period in seconds to wait for a health check to succeed. Valid range: 2–60.
  const DaemonTaskDefinitionContainerDefinitionHealthCheck({
    required this.commands,
    this.interval,
    this.retries,
    this.startPeriod,
    this.timeout,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'commands': commands,
      'interval': ?interval,
      'retries': ?retries,
      'startPeriod': ?startPeriod,
      'timeout': ?timeout,
    };
  }

  factory DaemonTaskDefinitionContainerDefinitionHealthCheck.fromMap(Map<String, dynamic> map) {
    return DaemonTaskDefinitionContainerDefinitionHealthCheck(
      commands: pulumi.Input.fromValue((map['commands'] as List).cast<String>()),
      interval: (() { final guardedValue = map['interval']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      retries: (() { final guardedValue = map['retries']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      startPeriod: (() { final guardedValue = map['startPeriod']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      timeout: (() { final guardedValue = map['timeout']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
    );
  }
}
