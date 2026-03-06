// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AgentAgentActionGroupFunctionSchemaMemberFunctionsFunctionParameter {
  /// Description of the parameter. Helps the foundation model determine how to elicit the parameters from the user.
  final pulumi.Input<String>? description;
  /// Name of the parameter.
  ///
  /// **Note:** The argument name `map_block_key` may seem out of context, but is necessary for backward compatibility reasons in the provider.
  final pulumi.Input<String> mapBlockKey;
  /// Whether the parameter is required for the agent to complete the function for action group invocation.
  final pulumi.Input<bool>? required;
  /// Data type of the parameter. Valid values: `string`, `number`, `integer`, `boolean`, `array`.
  final pulumi.Input<String> type;

  /// Creates a new [AgentAgentActionGroupFunctionSchemaMemberFunctionsFunctionParameter].
  /// [description] Description of the parameter. Helps the foundation model determine how to elicit the parameters from the user.
  /// [mapBlockKey] Name of the parameter.
  /// [required] Whether the parameter is required for the agent to complete the function for action group invocation.
  /// [type] Data type of the parameter. Valid values: `string`, `number`, `integer`, `boolean`, `array`.
  const AgentAgentActionGroupFunctionSchemaMemberFunctionsFunctionParameter({
    this.description,
    required this.mapBlockKey,
    this.required,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'mapBlockKey': mapBlockKey,
      'required': ?required,
      'type': type,
    };
  }

  factory AgentAgentActionGroupFunctionSchemaMemberFunctionsFunctionParameter.fromMap(Map<String, dynamic> map) {
    return AgentAgentActionGroupFunctionSchemaMemberFunctionsFunctionParameter(
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      mapBlockKey: pulumi.Input.fromValue(map['mapBlockKey'] as String),
      required: (() { final guardedValue = map['required']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}

