// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../agent_agent_action_group_function_schema_member_functions_function/agent_agent_action_group_function_schema_member_functions_function.dart';

class AgentAgentActionGroupFunctionSchemaMemberFunctions {
  /// Functions that each define an action in the action group. See <span pulumi-lang-nodejs="`functions`" pulumi-lang-dotnet="`Functions`" pulumi-lang-go="`functions`" pulumi-lang-python="`functions`" pulumi-lang-yaml="`functions`" pulumi-lang-java="`functions`">`functions`</span> Block for details.
  final List<AgentAgentActionGroupFunctionSchemaMemberFunctionsFunction>?
      functions;

  AgentAgentActionGroupFunctionSchemaMemberFunctions({
    this.functions,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final functionsValue = functions;
    if (functionsValue != null) {
      map['functions'] = Input.encodeList<
          AgentAgentActionGroupFunctionSchemaMemberFunctionsFunction,
          Map<String, dynamic>>(functionsValue, (value) => value.toMap());
    }
    return map;
  }

  factory AgentAgentActionGroupFunctionSchemaMemberFunctions.fromMap(
      Map<String, dynamic> map) {
    return AgentAgentActionGroupFunctionSchemaMemberFunctions(
      functions: map['functions'] == null
          ? null
          : Input.decodeList<
                  AgentAgentActionGroupFunctionSchemaMemberFunctionsFunction>(
              map['functions'],
              (value) =>
                  AgentAgentActionGroupFunctionSchemaMemberFunctionsFunction
                      .fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}
