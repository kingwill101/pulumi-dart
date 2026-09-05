// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'agent_agent_action_group_function_schema_member_functions_function_parameter.dart';

class AgentAgentActionGroupFunctionSchemaMemberFunctionsFunction {
  /// Description of the function and its purpose.
  final pulumi.Input<String?>? description;
  /// Name for the function.
  final pulumi.Input<String> name;
  /// Parameters that the agent elicits from the user to fulfill the function. See `parameters` Block for details.
  final pulumi.Input<List<AgentAgentActionGroupFunctionSchemaMemberFunctionsFunctionParameter>?>? parameters;

  /// Creates a new [AgentAgentActionGroupFunctionSchemaMemberFunctionsFunction].
  /// [description] Description of the function and its purpose.
  /// [name] Name for the function.
  /// [parameters] Parameters that the agent elicits from the user to fulfill the function. See `parameters` Block for details.
  const AgentAgentActionGroupFunctionSchemaMemberFunctionsFunction({
    this.description,
    required this.name,
    this.parameters,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'name': name,
      'parameters': ?pulumi.Input.mapOptionalInputValue<List<AgentAgentActionGroupFunctionSchemaMemberFunctionsFunctionParameter>, List<Map<String, dynamic>>>(parameters, (value) => pulumi.Input.encodeList<AgentAgentActionGroupFunctionSchemaMemberFunctionsFunctionParameter, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory AgentAgentActionGroupFunctionSchemaMemberFunctionsFunction.fromMap(Map<String, dynamic> map) {
    return AgentAgentActionGroupFunctionSchemaMemberFunctionsFunction(
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: pulumi.Input.fromValue(map['name'] as String),
      parameters: (() { final guardedValue = map['parameters']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<AgentAgentActionGroupFunctionSchemaMemberFunctionsFunctionParameter>(guardedValue, (value) => AgentAgentActionGroupFunctionSchemaMemberFunctionsFunctionParameter.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
