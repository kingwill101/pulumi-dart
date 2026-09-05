// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DaemonTaskDefinitionContainerDefinitionRestartPolicy {
  /// Whether a restart policy is enabled for the container.
  final pulumi.Input<bool> enabled;
  /// List of exit codes that Amazon ECS will ignore and not attempt a restart on. Maximum of 50.
  final pulumi.Input<List<int>?>? ignoredExitCodes;
  /// Period of time (in seconds) that the container must run for before a restart can be attempted. Valid range: 60–1800.
  final pulumi.Input<int?>? restartAttemptPeriod;

  /// Creates a new [DaemonTaskDefinitionContainerDefinitionRestartPolicy].
  /// [enabled] Whether a restart policy is enabled for the container.
  /// [ignoredExitCodes] List of exit codes that Amazon ECS will ignore and not attempt a restart on. Maximum of 50.
  /// [restartAttemptPeriod] Period of time (in seconds) that the container must run for before a restart can be attempted. Valid range: 60–1800.
  const DaemonTaskDefinitionContainerDefinitionRestartPolicy({
    required this.enabled,
    this.ignoredExitCodes,
    this.restartAttemptPeriod,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': enabled,
      'ignoredExitCodes': ?ignoredExitCodes,
      'restartAttemptPeriod': ?restartAttemptPeriod,
    };
  }

  factory DaemonTaskDefinitionContainerDefinitionRestartPolicy.fromMap(Map<String, dynamic> map) {
    return DaemonTaskDefinitionContainerDefinitionRestartPolicy(
      enabled: pulumi.Input.fromValue(map['enabled'] as bool),
      ignoredExitCodes: (() { final guardedValue = map['ignoredExitCodes']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<int>()); })(),
      restartAttemptPeriod: (() { final guardedValue = map['restartAttemptPeriod']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
    );
  }
}
