// ignore_for_file: unused_element, unnecessary_cast

/// Rolls back a `Rollout`.
class RollbackResponse {
  /// Optional. The starting phase ID for the `Rollout`. If unspecified, the `Rollout` will start in the stable phase.
  final String destinationPhase;

  RollbackResponse({
    required this.destinationPhase,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['destinationPhase'] = destinationPhase;
    return map;
  }

  factory RollbackResponse.fromMap(Map<String, dynamic> map) {
    return RollbackResponse(
      destinationPhase: map['destinationPhase'] as String,
    );
  }
}
