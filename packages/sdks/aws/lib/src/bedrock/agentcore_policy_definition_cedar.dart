// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AgentcorePolicyDefinitionCedar {
  /// Cedar policy statement.
  final pulumi.Input<String> statement;

  /// Creates a new [AgentcorePolicyDefinitionCedar].
  /// [statement] Cedar policy statement.
  const AgentcorePolicyDefinitionCedar({
    required this.statement,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'statement': statement,
    };
  }

  factory AgentcorePolicyDefinitionCedar.fromMap(Map<String, dynamic> map) {
    return AgentcorePolicyDefinitionCedar(
      statement: pulumi.Input.fromValue(map['statement'] as String),
    );
  }
}
