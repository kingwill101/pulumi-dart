// ignore_for_file: unused_element, unnecessary_cast

class GuardrailTopicPolicyConfigTopicsConfig {
  /// Definition of topic in topic policy.
  final String definition;

  /// List of text examples.
  final List<String>? examples;

  /// Name of topic in topic policy.
  final String name;

  /// Type of topic in a policy.
  final String type;

  GuardrailTopicPolicyConfigTopicsConfig({
    required this.definition,
    this.examples,
    required this.name,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['definition'] = definition;
    final examplesValue = examples;
    if (examplesValue != null) {
      map['examples'] = examplesValue;
    }
    map['name'] = name;
    map['type'] = type;
    return map;
  }

  factory GuardrailTopicPolicyConfigTopicsConfig.fromMap(
      Map<String, dynamic> map) {
    return GuardrailTopicPolicyConfigTopicsConfig(
      definition: map['definition'] as String,
      examples: map['examples'] == null
          ? null
          : (map['examples'] as List).cast<String>(),
      name: map['name'] as String,
      type: map['type'] as String,
    );
  }
}
