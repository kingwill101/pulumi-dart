// ignore_for_file: unused_element, unnecessary_cast

class VMwareNodePoolNodePoolAutoscaling {
  /// Maximum number of replicas in the NodePool.
  final int maxReplicas;

  /// Minimum number of replicas in the NodePool.
  final int minReplicas;

  VMwareNodePoolNodePoolAutoscaling({
    required this.maxReplicas,
    required this.minReplicas,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['maxReplicas'] = maxReplicas;
    map['minReplicas'] = minReplicas;
    return map;
  }

  factory VMwareNodePoolNodePoolAutoscaling.fromMap(Map<String, dynamic> map) {
    return VMwareNodePoolNodePoolAutoscaling(
      maxReplicas: map['maxReplicas'] as int,
      minReplicas: map['minReplicas'] as int,
    );
  }
}
