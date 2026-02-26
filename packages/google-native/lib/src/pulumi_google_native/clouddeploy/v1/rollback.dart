// ignore_for_file: unused_element, unnecessary_cast

/// Rolls back a `Rollout`.
class Rollback {
  /// Optional. The starting phase ID for the `Rollout`. If unspecified, the `Rollout` will start in the stable phase.
  final String? destinationPhase;

  Rollback({
    this.destinationPhase,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final destinationPhaseValue = destinationPhase;
    if (destinationPhaseValue != null) {
      map['destinationPhase'] = destinationPhaseValue;
    }
    return map;
  }

  factory Rollback.fromMap(Map<String, dynamic> map) {
    return Rollback(
      destinationPhase: map['destinationPhase'] == null
          ? null
          : map['destinationPhase'] as String,
    );
  }
}
