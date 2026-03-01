// ignore_for_file: unused_element, unnecessary_cast

import 'agent_agent_action_group_function_schema_member_functions.dart';

class AgentAgentActionGroupFunctionSchema {
  /// Contains a list of functions.
  /// Each function describes and action in the action group.
  /// See `member_functions` Block for details.
  final AgentAgentActionGroupFunctionSchemaMemberFunctions? memberFunctions;

  /// Creates a new [AgentAgentActionGroupFunctionSchema].
  /// [memberFunctions] Contains a list of functions.
  AgentAgentActionGroupFunctionSchema({
    this.memberFunctions,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'memberFunctions': ?memberFunctions == null ? null : memberFunctions!.toMap(),
    };
  }

  factory AgentAgentActionGroupFunctionSchema.fromMap(Map<String, dynamic> map) {
    return AgentAgentActionGroupFunctionSchema(
      memberFunctions: map['memberFunctions'] == null ? null : AgentAgentActionGroupFunctionSchemaMemberFunctions.fromMap((map['memberFunctions'] as Map).cast<String, dynamic>()),
    );
  }
}

