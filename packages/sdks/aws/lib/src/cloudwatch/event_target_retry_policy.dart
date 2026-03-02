// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class EventTargetRetryPolicy {
  /// The age in seconds to continue to make retry attempts.
  final pulumi.Input<int>? maximumEventAgeInSeconds;
  /// maximum number of retry attempts to make before the request fails
  final pulumi.Input<int>? maximumRetryAttempts;

  /// Creates a new [EventTargetRetryPolicy].
  /// [maximumEventAgeInSeconds] The age in seconds to continue to make retry attempts.
  /// [maximumRetryAttempts] maximum number of retry attempts to make before the request fails
  EventTargetRetryPolicy({
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
      maximumEventAgeInSeconds: map['maximumEventAgeInSeconds'] == null ? null : ((map['maximumEventAgeInSeconds'] as int).input()).input(),
      maximumRetryAttempts: map['maximumRetryAttempts'] == null ? null : ((map['maximumRetryAttempts'] as int).input()).input(),
    );
  }
}

