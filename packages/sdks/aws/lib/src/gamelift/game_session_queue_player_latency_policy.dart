// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GameSessionQueuePlayerLatencyPolicy {
  /// Maximum latency value that is allowed for any player.
  final pulumi.Input<int> maximumIndividualPlayerLatencyMilliseconds;
  /// Length of time that the policy is enforced while placing a new game session. Absence of value for this attribute means that the policy is enforced until the queue times out.
  final pulumi.Input<int>? policyDurationSeconds;

  /// Creates a new [GameSessionQueuePlayerLatencyPolicy].
  /// [maximumIndividualPlayerLatencyMilliseconds] Maximum latency value that is allowed for any player.
  /// [policyDurationSeconds] Length of time that the policy is enforced while placing a new game session. Absence of value for this attribute means that the policy is enforced until the queue times out.
  const GameSessionQueuePlayerLatencyPolicy({
    required this.maximumIndividualPlayerLatencyMilliseconds,
    this.policyDurationSeconds,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'maximumIndividualPlayerLatencyMilliseconds': maximumIndividualPlayerLatencyMilliseconds,
      'policyDurationSeconds': ?policyDurationSeconds,
    };
  }

  factory GameSessionQueuePlayerLatencyPolicy.fromMap(Map<String, dynamic> map) {
    return GameSessionQueuePlayerLatencyPolicy(
      maximumIndividualPlayerLatencyMilliseconds: pulumi.Input.fromValue(map['maximumIndividualPlayerLatencyMilliseconds'] as int),
      policyDurationSeconds: (() { final guardedValue = map['policyDurationSeconds']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
    );
  }
}
