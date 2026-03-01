// ignore_for_file: unused_element, unnecessary_cast


/// Deployment resource request payload
class ResourceRequests {
  /// Required CPU. 1 core can be represented by 1 or 1000m. This should be 500m or 1 for Basic tier, and {500m, 1, 2, 3, 4} for Standard tier.
  final String? cpu;
  /// Required memory. 1 GB can be represented by 1Gi or 1024Mi. This should be {512Mi, 1Gi, 2Gi} for Basic tier, and {512Mi, 1Gi, 2Gi, ..., 8Gi} for Standard tier.
  final String? memory;

  /// Creates a new [ResourceRequests].
  /// [cpu] Required CPU. 1 core can be represented by 1 or 1000m. This should be 500m or 1 for Basic tier, and {500m, 1, 2, 3, 4} for Standard tier.
  /// [memory] Required memory. 1 GB can be represented by 1Gi or 1024Mi. This should be {512Mi, 1Gi, 2Gi} for Basic tier, and {512Mi, 1Gi, 2Gi, ..., 8Gi} for Standard tier.
  ResourceRequests({
    this.cpu,
    this.memory,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cpu': ?cpu,
      'memory': ?memory,
    };
  }

  factory ResourceRequests.fromMap(Map<String, dynamic> map) {
    return ResourceRequests(
      cpu: map['cpu'] == null ? null : map['cpu'] as String,
      memory: map['memory'] == null ? null : map['memory'] as String,
    );
  }
}

