// ignore_for_file: unused_element, unnecessary_cast


/// Resource Requirements.
class ResourceRequirementsResponse {
  /// Gets or sets the Cpu requirement.
  final String? cpu;
  /// Gets or sets the Memory requirement.
  final String? memory;

  /// Creates a new [ResourceRequirementsResponse].
  /// [cpu] Gets or sets the Cpu requirement.
  /// [memory] Gets or sets the Memory requirement.
  ResourceRequirementsResponse({
    this.cpu,
    this.memory,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cpu': ?cpu,
      'memory': ?memory,
    };
  }

  factory ResourceRequirementsResponse.fromMap(Map<String, dynamic> map) {
    return ResourceRequirementsResponse(
      cpu: map['cpu'] == null ? null : map['cpu'] as String,
      memory: map['memory'] == null ? null : map['memory'] as String,
    );
  }
}

