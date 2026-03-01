// ignore_for_file: unused_element, unnecessary_cast


/// Describes the horizontal auto scaling mechanism that adds or removes replicas (containers or container groups).
class AddRemoveReplicaScalingMechanism {
  /// Enumerates the mechanisms for auto scaling.
  /// Expected value is 'AddRemoveReplica'.
  final String kind;
  /// Maximum number of containers (scale up won't be performed above this number).
  final int maxCount;
  /// Minimum number of containers (scale down won't be performed below this number).
  final int minCount;
  /// Each time auto scaling is performed, this number of containers will be added or removed.
  final int scaleIncrement;

  /// Creates a new [AddRemoveReplicaScalingMechanism].
  /// [kind] Enumerates the mechanisms for auto scaling.
  /// [maxCount] Maximum number of containers (scale up won't be performed above this number).
  /// [minCount] Minimum number of containers (scale down won't be performed below this number).
  /// [scaleIncrement] Each time auto scaling is performed, this number of containers will be added or removed.
  AddRemoveReplicaScalingMechanism({
    required this.kind,
    required this.maxCount,
    required this.minCount,
    required this.scaleIncrement,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'kind': kind,
      'maxCount': maxCount,
      'minCount': minCount,
      'scaleIncrement': scaleIncrement,
    };
  }

  factory AddRemoveReplicaScalingMechanism.fromMap(Map<String, dynamic> map) {
    return AddRemoveReplicaScalingMechanism(
      kind: map['kind'] as String,
      maxCount: map['maxCount'] as int,
      minCount: map['minCount'] as int,
      scaleIncrement: map['scaleIncrement'] as int,
    );
  }
}

