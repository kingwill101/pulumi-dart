// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class EventTargetRetryPolicy {
  /// The age in seconds to continue to make retry attempts.
  final pulumi.Input<int?>? maximumEventAgeInSeconds;
  /// maximum number of retry attempts to make before the request fails
  final pulumi.Input<int?>? maximumRetryAttempts;

  /// Creates a new [EventTargetRetryPolicy].
  /// [maximumEventAgeInSeconds] The age in seconds to continue to make retry attempts.
  /// [maximumRetryAttempts] maximum number of retry attempts to make before the request fails
  const EventTargetRetryPolicy({
    this.maximumEventAgeInSeconds,
    this.maximumRetryAttempts,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'maximumEventAgeInSeconds': ?maximumEventAgeInSeconds,
      'maximumRetryAttempts': ?maximumRetryAttempts,
    };
  }

  factory EventTargetRetryPolicy.fromMap(Map<String, dynamic> map) {
    return EventTargetRetryPolicy(
      maximumEventAgeInSeconds: (() { final guardedValue = map['maximumEventAgeInSeconds']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      maximumRetryAttempts: (() { final guardedValue = map['maximumRetryAttempts']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
    );
  }
}
