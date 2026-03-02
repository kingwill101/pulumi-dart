// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GuardrailTopicPolicyConfigTopicsConfig {
  /// Definition of topic in topic policy.
  final pulumi.Input<String> definition;
  /// List of text examples.
  final pulumi.Input<List<String>>? examples;
  /// Name of topic in topic policy.
  final pulumi.Input<String> name;
  /// Type of topic in a policy.
  final pulumi.Input<String> type;

  /// Creates a new [GuardrailTopicPolicyConfigTopicsConfig].
  /// [definition] Definition of topic in topic policy.
  /// [examples] List of text examples.
  /// [name] Name of topic in topic policy.
  /// [type] Type of topic in a policy.
  GuardrailTopicPolicyConfigTopicsConfig({
    required this.definition,
    this.examples,
    required this.name,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'definition': definition,
      'examples': ?examples,
      'name': name,
      'type': type,
    };
  }

  factory GuardrailTopicPolicyConfigTopicsConfig.fromMap(Map<String, dynamic> map) {
    return GuardrailTopicPolicyConfigTopicsConfig(
      definition: (map['definition'] as String).input(),
      examples: map['examples'] == null ? null : ((map['examples'] as List).cast<String>()).input(),
      name: (map['name'] as String).input(),
      type: (map['type'] as String).input(),
    );
  }
}

