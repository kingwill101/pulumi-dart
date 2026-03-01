// ignore_for_file: unused_element, unnecessary_cast


/// Build service agent pool size properties
class BuildServiceAgentPoolSizePropertiesResponse {
  /// The cpu property of build service agent pool size
  final String cpu;
  /// The memory property of build service agent pool size
  final String memory;
  /// The name of build service agent pool size
  final String? name;

  /// Creates a new [BuildServiceAgentPoolSizePropertiesResponse].
  /// [cpu] The cpu property of build service agent pool size
  /// [memory] The memory property of build service agent pool size
  /// [name] The name of build service agent pool size
  BuildServiceAgentPoolSizePropertiesResponse({
    required this.cpu,
    required this.memory,
    this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cpu': cpu,
      'memory': memory,
      'name': ?name,
    };
  }

  factory BuildServiceAgentPoolSizePropertiesResponse.fromMap(Map<String, dynamic> map) {
    return BuildServiceAgentPoolSizePropertiesResponse(
      cpu: map['cpu'] as String,
      memory: map['memory'] as String,
      name: map['name'] == null ? null : map['name'] as String,
    );
  }
}

