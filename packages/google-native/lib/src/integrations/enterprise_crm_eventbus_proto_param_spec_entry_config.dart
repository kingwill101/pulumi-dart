// ignore_for_file: unused_element, unnecessary_cast

import 'enterprise_crm_eventbus_proto_param_spec_entry_config_input_display_option.dart';
import 'enterprise_crm_eventbus_proto_param_spec_entry_config_parameter_name_option.dart';

class EnterpriseCrmEventbusProtoParamSpecEntryConfig {
  /// A short phrase to describe what this parameter contains.
  final String? descriptivePhrase;

  /// Detailed help text for this parameter containing information not provided elsewhere. For example, instructions on how to migrate from a deprecated parameter.
  final String? helpText;

  /// Whether the default value is hidden in the UI.
  final bool? hideDefaultValue;
  final EnterpriseCrmEventbusProtoParamSpecEntryConfigInputDisplayOption?
      inputDisplayOption;

  /// Whether this field is hidden in the UI.
  final bool? isHidden;

  /// A user-friendly label for the parameter.
  final String? label;
  final EnterpriseCrmEventbusProtoParamSpecEntryConfigParameterNameOption?
      parameterNameOption;

  /// A user-friendly label for subSection under which the parameter will be displayed.
  final String? subSectionLabel;

  /// Placeholder text which will appear in the UI input form for this parameter.
  final String? uiPlaceholderText;

  /// Creates a new [EnterpriseCrmEventbusProtoParamSpecEntryConfig].
  /// [descriptivePhrase] A short phrase to describe what this parameter contains.
  /// [helpText] Detailed help text for this parameter containing information not provided elsewhere. For example, instructions on how to migrate from a deprecated parameter.
  /// [hideDefaultValue] Whether the default value is hidden in the UI.
  /// [inputDisplayOption] Optional.
  /// [isHidden] Whether this field is hidden in the UI.
  /// [label] A user-friendly label for the parameter.
  /// [parameterNameOption] Optional.
  /// [subSectionLabel] A user-friendly label for subSection under which the parameter will be displayed.
  /// [uiPlaceholderText] Placeholder text which will appear in the UI input form for this parameter.
  EnterpriseCrmEventbusProtoParamSpecEntryConfig({
    this.descriptivePhrase,
    this.helpText,
    this.hideDefaultValue,
    this.inputDisplayOption,
    this.isHidden,
    this.label,
    this.parameterNameOption,
    this.subSectionLabel,
    this.uiPlaceholderText,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final descriptivePhraseValue = descriptivePhrase;
    if (descriptivePhraseValue != null) {
      map['descriptivePhrase'] = descriptivePhraseValue;
    }
    final helpTextValue = helpText;
    if (helpTextValue != null) {
      map['helpText'] = helpTextValue;
    }
    final hideDefaultValueValue = hideDefaultValue;
    if (hideDefaultValueValue != null) {
      map['hideDefaultValue'] = hideDefaultValueValue;
    }
    final inputDisplayOptionValue = inputDisplayOption;
    if (inputDisplayOptionValue != null) {
      map['inputDisplayOption'] = inputDisplayOptionValue.value;
    }
    final isHiddenValue = isHidden;
    if (isHiddenValue != null) {
      map['isHidden'] = isHiddenValue;
    }
    final labelValue = label;
    if (labelValue != null) {
      map['label'] = labelValue;
    }
    final parameterNameOptionValue = parameterNameOption;
    if (parameterNameOptionValue != null) {
      map['parameterNameOption'] = parameterNameOptionValue.value;
    }
    final subSectionLabelValue = subSectionLabel;
    if (subSectionLabelValue != null) {
      map['subSectionLabel'] = subSectionLabelValue;
    }
    final uiPlaceholderTextValue = uiPlaceholderText;
    if (uiPlaceholderTextValue != null) {
      map['uiPlaceholderText'] = uiPlaceholderTextValue;
    }
    return map;
  }

  factory EnterpriseCrmEventbusProtoParamSpecEntryConfig.fromMap(
      Map<String, dynamic> map) {
    return EnterpriseCrmEventbusProtoParamSpecEntryConfig(
      descriptivePhrase: map['descriptivePhrase'] == null
          ? null
          : map['descriptivePhrase'] as String,
      helpText: map['helpText'] == null ? null : map['helpText'] as String,
      hideDefaultValue: map['hideDefaultValue'] == null
          ? null
          : map['hideDefaultValue'] as bool,
      inputDisplayOption: map['inputDisplayOption'] == null
          ? null
          : EnterpriseCrmEventbusProtoParamSpecEntryConfigInputDisplayOption
              .fromValue(map['inputDisplayOption'] as String),
      isHidden: map['isHidden'] == null ? null : map['isHidden'] as bool,
      label: map['label'] == null ? null : map['label'] as String,
      parameterNameOption: map['parameterNameOption'] == null
          ? null
          : EnterpriseCrmEventbusProtoParamSpecEntryConfigParameterNameOption
              .fromValue(map['parameterNameOption'] as String),
      subSectionLabel: map['subSectionLabel'] == null
          ? null
          : map['subSectionLabel'] as String,
      uiPlaceholderText: map['uiPlaceholderText'] == null
          ? null
          : map['uiPlaceholderText'] as String,
    );
  }
}
