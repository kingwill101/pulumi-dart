// ignore_for_file: unused_element, unnecessary_cast

/// Represents intent parameters.
class GoogleCloudDialogflowV2IntentParameterResponse {
  /// Optional. The default value to use when the `value` yields an empty result. Default values can be extracted from contexts by using the following syntax: `#context_name.parameter_name`.
  final String defaultValue;

  /// The name of the parameter.
  final String displayName;

  /// Optional. The name of the entity type, prefixed with `@`, that describes values of the parameter. If the parameter is required, this must be provided.
  final String entityTypeDisplayName;

  /// Optional. Indicates whether the parameter represents a list of values.
  final bool isList;

  /// Optional. Indicates whether the parameter is required. That is, whether the intent cannot be completed without collecting the parameter value.
  final bool mandatory;

  /// The unique identifier of this parameter.
  final String name;

  /// Optional. The collection of prompts that the agent can present to the user in order to collect a value for the parameter.
  final List<String> prompts;

  /// Optional. The definition of the parameter value. It can be: - a constant string, - a parameter value defined as `$parameter_name`, - an original parameter value defined as `$parameter_name.original`, - a parameter value from some context defined as `#context_name.parameter_name`.
  final String value;

  GoogleCloudDialogflowV2IntentParameterResponse({
    required this.defaultValue,
    required this.displayName,
    required this.entityTypeDisplayName,
    required this.isList,
    required this.mandatory,
    required this.name,
    required this.prompts,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['defaultValue'] = defaultValue;
    map['displayName'] = displayName;
    map['entityTypeDisplayName'] = entityTypeDisplayName;
    map['isList'] = isList;
    map['mandatory'] = mandatory;
    map['name'] = name;
    map['prompts'] = prompts;
    map['value'] = value;
    return map;
  }

  factory GoogleCloudDialogflowV2IntentParameterResponse.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudDialogflowV2IntentParameterResponse(
      defaultValue: map['defaultValue'] as String,
      displayName: map['displayName'] as String,
      entityTypeDisplayName: map['entityTypeDisplayName'] as String,
      isList: map['isList'] as bool,
      mandatory: map['mandatory'] as bool,
      name: map['name'] as String,
      prompts: (map['prompts'] as List).cast<String>(),
      value: map['value'] as String,
    );
  }
}
