// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../agent_agent_action_group_function_schema_member_functions_function_parameter/agent_agent_action_group_function_schema_member_functions_function_parameter.dart';

class AgentAgentActionGroupFunctionSchemaMemberFunctionsFunction {
  /// Description of the function and its purpose.
  final String? description;

  /// Name for the function.
  final String name;

  /// Parameters that the agent elicits from the user to fulfill the function. See `parameters` Block for details.
  final List<
          AgentAgentActionGroupFunctionSchemaMemberFunctionsFunctionParameter>?
      parameters;

  AgentAgentActionGroupFunctionSchemaMemberFunctionsFunction({
    this.description,
    required this.name,
    this.parameters,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    map['name'] = name;
    final parametersValue = parameters;
    if (parametersValue != null) {
      map['parameters'] = Input.encodeList<
          AgentAgentActionGroupFunctionSchemaMemberFunctionsFunctionParameter,
          Map<String, dynamic>>(parametersValue, (value) => value.toMap());
    }
    return map;
  }

  factory AgentAgentActionGroupFunctionSchemaMemberFunctionsFunction.fromMap(
      Map<String, dynamic> map) {
    return AgentAgentActionGroupFunctionSchemaMemberFunctionsFunction(
      description:
          map['description'] == null ? null : map['description'] as String,
      name: map['name'] as String,
      parameters: map['parameters'] == null
          ? null
          : Input.decodeList<
                  AgentAgentActionGroupFunctionSchemaMemberFunctionsFunctionParameter>(
              map['parameters'],
              (value) =>
                  AgentAgentActionGroupFunctionSchemaMemberFunctionsFunctionParameter
                      .fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}
