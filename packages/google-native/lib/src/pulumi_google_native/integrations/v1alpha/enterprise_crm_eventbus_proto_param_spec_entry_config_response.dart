// ignore_for_file: unused_element, unnecessary_cast

class EnterpriseCrmEventbusProtoParamSpecEntryConfigResponse {
  /// A short phrase to describe what this parameter contains.
  final String descriptivePhrase;

  /// Detailed help text for this parameter containing information not provided elsewhere. For example, instructions on how to migrate from a deprecated parameter.
  final String helpText;

  /// Whether the default value is hidden in the UI.
  final bool hideDefaultValue;
  final String inputDisplayOption;

  /// Whether this field is hidden in the UI.
  final bool isHidden;

  /// A user-friendly label for the parameter.
  final String label;
  final String parameterNameOption;

  /// A user-friendly label for subSection under which the parameter will be displayed.
  final String subSectionLabel;

  /// Placeholder text which will appear in the UI input form for this parameter.
  final String uiPlaceholderText;

  EnterpriseCrmEventbusProtoParamSpecEntryConfigResponse({
    required this.descriptivePhrase,
    required this.helpText,
    required this.hideDefaultValue,
    required this.inputDisplayOption,
    required this.isHidden,
    required this.label,
    required this.parameterNameOption,
    required this.subSectionLabel,
    required this.uiPlaceholderText,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['descriptivePhrase'] = descriptivePhrase;
    map['helpText'] = helpText;
    map['hideDefaultValue'] = hideDefaultValue;
    map['inputDisplayOption'] = inputDisplayOption;
    map['isHidden'] = isHidden;
    map['label'] = label;
    map['parameterNameOption'] = parameterNameOption;
    map['subSectionLabel'] = subSectionLabel;
    map['uiPlaceholderText'] = uiPlaceholderText;
    return map;
  }

  factory EnterpriseCrmEventbusProtoParamSpecEntryConfigResponse.fromMap(
      Map<String, dynamic> map) {
    return EnterpriseCrmEventbusProtoParamSpecEntryConfigResponse(
      descriptivePhrase: map['descriptivePhrase'] as String,
      helpText: map['helpText'] as String,
      hideDefaultValue: map['hideDefaultValue'] as bool,
      inputDisplayOption: map['inputDisplayOption'] as String,
      isHidden: map['isHidden'] as bool,
      label: map['label'] as String,
      parameterNameOption: map['parameterNameOption'] as String,
      subSectionLabel: map['subSectionLabel'] as String,
      uiPlaceholderText: map['uiPlaceholderText'] as String,
    );
  }
}
