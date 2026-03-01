// ignore_for_file: unused_element, unnecessary_cast


/// Build service agent pool size properties
class BuildServiceAgentPoolSizeProperties {
  /// The name of build service agent pool size
  final String? name;

  /// Creates a new [BuildServiceAgentPoolSizeProperties].
  /// [name] The name of build service agent pool size
  BuildServiceAgentPoolSizeProperties({
    this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
    };
  }

  factory BuildServiceAgentPoolSizeProperties.fromMap(Map<String, dynamic> map) {
    return BuildServiceAgentPoolSizeProperties(
      name: map['name'] == null ? null : map['name'] as String,
    );
  }
}

