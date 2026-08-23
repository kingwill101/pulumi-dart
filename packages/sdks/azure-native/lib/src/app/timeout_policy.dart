// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Policy to set request timeouts
class TimeoutPolicy {
  /// Timeout, in seconds, for a request to initiate a connection
  final pulumi.Input<int>? connectionTimeoutInSeconds;
  /// Timeout, in seconds, for a request to respond
  final pulumi.Input<int>? responseTimeoutInSeconds;

  /// Creates a new [TimeoutPolicy].
  /// [connectionTimeoutInSeconds] Timeout, in seconds, for a request to initiate a connection
  /// [responseTimeoutInSeconds] Timeout, in seconds, for a request to respond
  const TimeoutPolicy({
    this.connectionTimeoutInSeconds,
    this.responseTimeoutInSeconds,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'connectionTimeoutInSeconds': ?connectionTimeoutInSeconds,
      'responseTimeoutInSeconds': ?responseTimeoutInSeconds,
    };
  }

  factory TimeoutPolicy.fromMap(Map<String, dynamic> map) {
    return TimeoutPolicy(
      connectionTimeoutInSeconds: (() { final guardedValue = map['connectionTimeoutInSeconds']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      responseTimeoutInSeconds: (() { final guardedValue = map['responseTimeoutInSeconds']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
    );
  }
}
