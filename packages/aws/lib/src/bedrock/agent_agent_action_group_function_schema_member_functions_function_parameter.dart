// ignore_for_file: unused_element, unnecessary_cast

class AgentAgentActionGroupFunctionSchemaMemberFunctionsFunctionParameter {
  /// Description of the parameter. Helps the foundation model determine how to elicit the parameters from the user.
  final String? description;

  /// Name of the parameter.
  ///
  /// **Note:** The argument name `map_block_key` may seem out of context, but is necessary for backward compatibility reasons in the provider.
  final String mapBlockKey;

  /// Whether the parameter is required for the agent to complete the function for action group invocation.
  final bool? required;

  /// Data type of the parameter. Valid values: `string`, `number`, `integer`, `boolean`, `array`.
  final String type;

  /// Creates a new [AgentAgentActionGroupFunctionSchemaMemberFunctionsFunctionParameter].
  /// [description] Description of the parameter. Helps the foundation model determine how to elicit the parameters from the user.
  /// [mapBlockKey] Name of the parameter.
  /// [required] Whether the parameter is required for the agent to complete the function for action group invocation.
  /// [type] Data type of the parameter. Valid values: `string`, `number`, `integer`, `boolean`, `array`.
  AgentAgentActionGroupFunctionSchemaMemberFunctionsFunctionParameter({
    this.description,
    required this.mapBlockKey,
    this.required,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    map['mapBlockKey'] = mapBlockKey;
    final requiredValue = required;
    if (requiredValue != null) {
      map['required'] = requiredValue;
    }
    map['type'] = type;
    return map;
  }

  factory AgentAgentActionGroupFunctionSchemaMemberFunctionsFunctionParameter.fromMap(
      Map<String, dynamic> map) {
    return AgentAgentActionGroupFunctionSchemaMemberFunctionsFunctionParameter(
      description:
          map['description'] == null ? null : map['description'] as String,
      mapBlockKey: map['mapBlockKey'] as String,
      required: map['required'] == null ? null : map['required'] as bool,
      type: map['type'] as String,
    );
  }
}
