// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'agent_agent_action_group_function_schema_member_functions_function.dart';

class AgentAgentActionGroupFunctionSchemaMemberFunctions {
  /// Functions that each define an action in the action group. See `functions` Block for details.
  final List<AgentAgentActionGroupFunctionSchemaMemberFunctionsFunction>?
  functions;

  /// Creates a new [AgentAgentActionGroupFunctionSchemaMemberFunctions].
  /// [functions] Functions that each define an action in the action group. See `functions` Block for details.
  AgentAgentActionGroupFunctionSchemaMemberFunctions({this.functions});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'functions': ?functions == null
          ? null
          : pulumi.Input.encodeList<
              AgentAgentActionGroupFunctionSchemaMemberFunctionsFunction,
              Map<String, dynamic>
            >(functions!, (value) => value.toMap()),
    };
  }

  factory AgentAgentActionGroupFunctionSchemaMemberFunctions.fromMap(
    Map<String, dynamic> map,
  ) {
    return AgentAgentActionGroupFunctionSchemaMemberFunctions(
      functions: map['functions'] == null
          ? null
          : pulumi.Input.decodeList<
              AgentAgentActionGroupFunctionSchemaMemberFunctionsFunction
            >(
              map['functions'],
              (value) =>
                  AgentAgentActionGroupFunctionSchemaMemberFunctionsFunction.fromMap(
                    (value as Map).cast<String, dynamic>(),
                  ),
            ),
    );
  }
}
