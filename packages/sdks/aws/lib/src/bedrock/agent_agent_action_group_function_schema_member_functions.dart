// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'agent_agent_action_group_function_schema_member_functions_function.dart';

class AgentAgentActionGroupFunctionSchemaMemberFunctions {
  /// Functions that each define an action in the action group. See `functions` Block for details.
  final pulumi.Input<List<AgentAgentActionGroupFunctionSchemaMemberFunctionsFunction>?>? functions;

  /// Creates a new [AgentAgentActionGroupFunctionSchemaMemberFunctions].
  /// [functions] Functions that each define an action in the action group. See `functions` Block for details.
  const AgentAgentActionGroupFunctionSchemaMemberFunctions({
    this.functions,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'functions': ?pulumi.Input.mapOptionalInputValue<List<AgentAgentActionGroupFunctionSchemaMemberFunctionsFunction>, List<Map<String, dynamic>>>(functions, (value) => pulumi.Input.encodeList<AgentAgentActionGroupFunctionSchemaMemberFunctionsFunction, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory AgentAgentActionGroupFunctionSchemaMemberFunctions.fromMap(Map<String, dynamic> map) {
    return AgentAgentActionGroupFunctionSchemaMemberFunctions(
      functions: (() { final guardedValue = map['functions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<AgentAgentActionGroupFunctionSchemaMemberFunctionsFunction>(guardedValue, (value) => AgentAgentActionGroupFunctionSchemaMemberFunctionsFunction.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
