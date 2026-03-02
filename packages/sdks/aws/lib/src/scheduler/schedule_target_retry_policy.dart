// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ScheduleTargetRetryPolicy {
  /// Maximum amount of time, in seconds, to continue to make retry attempts. Ranges from `60` to `86400` (default).
  final pulumi.Input<int>? maximumEventAgeInSeconds;
  /// Maximum number of retry attempts to make before the request fails. Ranges from `0` to `185` (default).
  final pulumi.Input<int>? maximumRetryAttempts;

  /// Creates a new [ScheduleTargetRetryPolicy].
  /// [maximumEventAgeInSeconds] Maximum amount of time, in seconds, to continue to make retry attempts. Ranges from `60` to `86400` (default).
  /// [maximumRetryAttempts] Maximum number of retry attempts to make before the request fails. Ranges from `0` to `185` (default).
  ScheduleTargetRetryPolicy({
    this.maximumEventAgeInSeconds,
    this.maximumRetryAttempts,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'maximumEventAgeInSeconds': ?maximumEventAgeInSeconds,
      'maximumRetryAttempts': ?maximumRetryAttempts,
    };
  }

  factory ScheduleTargetRetryPolicy.fromMap(Map<String, dynamic> map) {
    return ScheduleTargetRetryPolicy(
      maximumEventAgeInSeconds: map['maximumEventAgeInSeconds'] == null ? null : ((map['maximumEventAgeInSeconds'] as int).input()).input(),
      maximumRetryAttempts: map['maximumRetryAttempts'] == null ? null : ((map['maximumRetryAttempts'] as int).input()).input(),
    );
  }
}

