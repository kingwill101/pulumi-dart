// ignore_for_file: unused_element, unnecessary_cast

class AgentAgentActionGroupFunctionSchemaMemberFunctionsFunctionParameter {
  /// Description of the parameter. Helps the foundation model determine how to elicit the parameters from the user.
  final String? description;

  /// Name of the parameter.
  ///
  /// **Note:** The argument name <span pulumi-lang-nodejs="`mapBlockKey`" pulumi-lang-dotnet="`MapBlockKey`" pulumi-lang-go="`mapBlockKey`" pulumi-lang-python="`map_block_key`" pulumi-lang-yaml="`mapBlockKey`" pulumi-lang-java="`mapBlockKey`">`map_block_key`</span> may seem out of context, but is necessary for backward compatibility reasons in the provider.
  final String mapBlockKey;

  /// Whether the parameter is required for the agent to complete the function for action group invocation.
  final bool? required;

  /// Data type of the parameter. Valid values: <span pulumi-lang-nodejs="`string`" pulumi-lang-dotnet="`String`" pulumi-lang-go="`string`" pulumi-lang-python="`string`" pulumi-lang-yaml="`string`" pulumi-lang-java="`string`">`string`</span>, <span pulumi-lang-nodejs="`number`" pulumi-lang-dotnet="`Number`" pulumi-lang-go="`number`" pulumi-lang-python="`number`" pulumi-lang-yaml="`number`" pulumi-lang-java="`number`">`number`</span>, <span pulumi-lang-nodejs="`integer`" pulumi-lang-dotnet="`Integer`" pulumi-lang-go="`integer`" pulumi-lang-python="`integer`" pulumi-lang-yaml="`integer`" pulumi-lang-java="`integer`">`integer`</span>, <span pulumi-lang-nodejs="`boolean`" pulumi-lang-dotnet="`Boolean`" pulumi-lang-go="`boolean`" pulumi-lang-python="`boolean`" pulumi-lang-yaml="`boolean`" pulumi-lang-java="`boolean`">`boolean`</span>, <span pulumi-lang-nodejs="`array`" pulumi-lang-dotnet="`Array`" pulumi-lang-go="`array`" pulumi-lang-python="`array`" pulumi-lang-yaml="`array`" pulumi-lang-java="`array`">`array`</span>.
  final String type;

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
