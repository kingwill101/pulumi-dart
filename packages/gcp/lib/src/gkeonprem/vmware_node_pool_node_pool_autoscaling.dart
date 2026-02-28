// ignore_for_file: unused_element, unnecessary_cast


class VMwareNodePoolNodePoolAutoscaling {
  /// Maximum number of replicas in the NodePool.
  final int maxReplicas;
  /// Minimum number of replicas in the NodePool.
  final int minReplicas;

  /// Creates a new [VMwareNodePoolNodePoolAutoscaling].
  /// [maxReplicas] Maximum number of replicas in the NodePool.
  /// [minReplicas] Minimum number of replicas in the NodePool.
  VMwareNodePoolNodePoolAutoscaling({
    required this.maxReplicas,
    required this.minReplicas,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'maxReplicas': maxReplicas,
      'minReplicas': minReplicas,
    };
  }

  factory VMwareNodePoolNodePoolAutoscaling.fromMap(Map<String, dynamic> map) {
    return VMwareNodePoolNodePoolAutoscaling(
      maxReplicas: map['maxReplicas'] as int,
      minReplicas: map['minReplicas'] as int,
    );
  }
}

