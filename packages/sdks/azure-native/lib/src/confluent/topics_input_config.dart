// ignore_for_file: unused_element, unnecessary_cast


/// Topics input config
class TopicsInputConfig {
  /// Name of the topic input config
  final String? name;
  /// Value of the topic input config
  final String? value;

  /// Creates a new [TopicsInputConfig].
  /// [name] Name of the topic input config
  /// [value] Value of the topic input config
  TopicsInputConfig({
    this.name,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'value': ?value,
    };
  }

  factory TopicsInputConfig.fromMap(Map<String, dynamic> map) {
    return TopicsInputConfig(
      name: map['name'] == null ? null : map['name'] as String,
      value: map['value'] == null ? null : map['value'] as String,
    );
  }
}

