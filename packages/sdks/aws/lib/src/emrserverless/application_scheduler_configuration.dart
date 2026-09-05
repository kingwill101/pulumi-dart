// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ApplicationSchedulerConfiguration {
  /// Maximum concurrent job runs on this application. Valid range is `1` to `1000`. Defaults to `15`.
  final pulumi.Input<int?>? maxConcurrentRuns;
  /// Maximum duration in minutes for the job in QUEUED state. Valid range is from `15` to `720`. Defaults to `360`.
  final pulumi.Input<int?>? queueTimeoutMinutes;

  /// Creates a new [ApplicationSchedulerConfiguration].
  /// [maxConcurrentRuns] Maximum concurrent job runs on this application. Valid range is `1` to `1000`. Defaults to `15`.
  /// [queueTimeoutMinutes] Maximum duration in minutes for the job in QUEUED state. Valid range is from `15` to `720`. Defaults to `360`.
  const ApplicationSchedulerConfiguration({
    this.maxConcurrentRuns,
    this.queueTimeoutMinutes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'maxConcurrentRuns': ?maxConcurrentRuns,
      'queueTimeoutMinutes': ?queueTimeoutMinutes,
    };
  }

  factory ApplicationSchedulerConfiguration.fromMap(Map<String, dynamic> map) {
    return ApplicationSchedulerConfiguration(
      maxConcurrentRuns: (() { final guardedValue = map['maxConcurrentRuns']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      queueTimeoutMinutes: (() { final guardedValue = map['queueTimeoutMinutes']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
    );
  }
}
