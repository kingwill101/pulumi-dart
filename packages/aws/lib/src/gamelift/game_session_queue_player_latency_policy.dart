// ignore_for_file: unused_element, unnecessary_cast

class GameSessionQueuePlayerLatencyPolicy {
  /// Maximum latency value that is allowed for any player.
  final int maximumIndividualPlayerLatencyMilliseconds;

  /// Length of time that the policy is enforced while placing a new game session. Absence of value for this attribute means that the policy is enforced until the queue times out.
  final int? policyDurationSeconds;

  /// Creates a new [GameSessionQueuePlayerLatencyPolicy].
  /// [maximumIndividualPlayerLatencyMilliseconds] Maximum latency value that is allowed for any player.
  /// [policyDurationSeconds] Length of time that the policy is enforced while placing a new game session. Absence of value for this attribute means that the policy is enforced until the queue times out.
  GameSessionQueuePlayerLatencyPolicy({
    required this.maximumIndividualPlayerLatencyMilliseconds,
    this.policyDurationSeconds,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'maximumIndividualPlayerLatencyMilliseconds':
          maximumIndividualPlayerLatencyMilliseconds,
      'policyDurationSeconds': ?policyDurationSeconds,
    };
  }

  factory GameSessionQueuePlayerLatencyPolicy.fromMap(
    Map<String, dynamic> map,
  ) {
    return GameSessionQueuePlayerLatencyPolicy(
      maximumIndividualPlayerLatencyMilliseconds:
          map['maximumIndividualPlayerLatencyMilliseconds'] as int,
      policyDurationSeconds: map['policyDurationSeconds'] == null
          ? null
          : map['policyDurationSeconds'] as int,
    );
  }
}
