// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'agent_agent_action_group_function_schema_member_functions.dart';

class AgentAgentActionGroupFunctionSchema {
  /// Contains a list of functions.
  /// Each function describes and action in the action group.
  /// See `member_functions` Block for details.
  final pulumi.Input<AgentAgentActionGroupFunctionSchemaMemberFunctions>? memberFunctions;

  /// Creates a new [AgentAgentActionGroupFunctionSchema].
  /// [memberFunctions] Contains a list of functions.
  AgentAgentActionGroupFunctionSchema({
    this.memberFunctions,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'memberFunctions': ?pulumi.Input.mapOptionalInputValue<AgentAgentActionGroupFunctionSchemaMemberFunctions, Map<String, dynamic>>(memberFunctions, (value) => value.toMap()),
    };
  }

  factory AgentAgentActionGroupFunctionSchema.fromMap(Map<String, dynamic> map) {
    return AgentAgentActionGroupFunctionSchema(
      memberFunctions: (() { final guardedValue = map['memberFunctions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AgentAgentActionGroupFunctionSchemaMemberFunctions.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

