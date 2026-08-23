// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'agentcore_policy_definition_cedar.dart';

class AgentcorePolicyDefinition {
  /// Inline Cedar policy. See `cedar` Block for details.
  final pulumi.Input<AgentcorePolicyDefinitionCedar> cedar;

  /// Creates a new [AgentcorePolicyDefinition].
  /// [cedar] Inline Cedar policy. See `cedar` Block for details.
  const AgentcorePolicyDefinition({
    required this.cedar,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cedar': pulumi.Input.mapInputValue<AgentcorePolicyDefinitionCedar, Map<String, dynamic>>(cedar, (value) => value.toMap()),
    };
  }

  factory AgentcorePolicyDefinition.fromMap(Map<String, dynamic> map) {
    return AgentcorePolicyDefinition(
      cedar: pulumi.Input.fromValue(AgentcorePolicyDefinitionCedar.fromMap((map['cedar']! as Map).cast<String, dynamic>())),
    );
  }
}
