// ignore_for_file: unused_element, unnecessary_cast

/// Rolls back a `Rollout`.
class Rollback {
  /// Optional. The starting phase ID for the `Rollout`. If unspecified, the `Rollout` will start in the stable phase.
  final String? destinationPhase;

  /// Creates a new [Rollback].
  /// [destinationPhase] Optional. The starting phase ID for the `Rollout`. If unspecified, the `Rollout` will start in the stable phase.
  Rollback({this.destinationPhase});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'destinationPhase': ?destinationPhase};
  }

  factory Rollback.fromMap(Map<String, dynamic> map) {
    return Rollback(
      destinationPhase: map['destinationPhase'] == null
          ? null
          : map['destinationPhase'] as String,
    );
  }
}
