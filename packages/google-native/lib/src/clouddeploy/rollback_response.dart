// ignore_for_file: unused_element, unnecessary_cast


/// Rolls back a `Rollout`.
class RollbackResponse {
  /// Optional. The starting phase ID for the `Rollout`. If unspecified, the `Rollout` will start in the stable phase.
  final String destinationPhase;

  /// Creates a new [RollbackResponse].
  /// [destinationPhase] Optional. The starting phase ID for the `Rollout`. If unspecified, the `Rollout` will start in the stable phase.
  RollbackResponse({
    required this.destinationPhase,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'destinationPhase': destinationPhase,
    };
  }

  factory RollbackResponse.fromMap(Map<String, dynamic> map) {
    return RollbackResponse(
      destinationPhase: map['destinationPhase'] as String,
    );
  }
}

