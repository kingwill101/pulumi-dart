// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class PolicyDefinitionStatic {
  /// The description of the static policy.
  final pulumi.Input<String>? description;
  /// The statement of the static policy.
  final pulumi.Input<String> statement;

  /// Creates a new [PolicyDefinitionStatic].
  /// [description] The description of the static policy.
  /// [statement] The statement of the static policy.
  const PolicyDefinitionStatic({
    this.description,
    required this.statement,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'statement': statement,
    };
  }

  factory PolicyDefinitionStatic.fromMap(Map<String, dynamic> map) {
    return PolicyDefinitionStatic(
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      statement: pulumi.Input.fromValue(map['statement'] as String),
    );
  }
}

