// ignore_for_file: unused_element, unnecessary_cast

import '../cx_page_form_parameter_advanced_settings/cx_page_form_parameter_advanced_settings.dart';
import '../cx_page_form_parameter_fill_behavior/cx_page_form_parameter_fill_behavior.dart';

class CxPageFormParameter {
  /// Hierarchical advanced settings for this parameter. The settings exposed at the lower level overrides the settings exposed at the higher level.
  /// Hierarchy: Agent->Flow->Page->Fulfillment/Parameter.
  /// Structure is documented below.
  final CxPageFormParameterAdvancedSettings? advancedSettings;

  /// The default value of an optional parameter. If the parameter is required, the default value will be ignored.
  final String? defaultValue;

  /// The human-readable name of the parameter, unique within the form.
  final String? displayName;

  /// The entity type of the parameter.
  /// Format: projects/-/locations/-/agents/-/entityTypes/<System Entity Type ID> for system entity types (for example, projects/-/locations/-/agents/-/entityTypes/sys.date), or projects/<Project ID>/locations/<Location ID>/agents/<Agent ID>/entityTypes/<Entity Type ID> for developer entity types.
  final String? entityType;

  /// Defines fill behavior for the parameter.
  /// Structure is documented below.
  final CxPageFormParameterFillBehavior? fillBehavior;

  /// Indicates whether the parameter represents a list of values.
  final bool? isList;

  /// Indicates whether the parameter content should be redacted in log.
  /// If redaction is enabled, the parameter content will be replaced by parameter name during logging. Note: the parameter content is subject to redaction if either parameter level redaction or entity type level redaction is enabled.
  final bool? redact;

  /// Indicates whether the parameter is required. Optional parameters will not trigger prompts; however, they are filled if the user specifies them.
  /// Required parameters must be filled before form filling concludes.
  final bool? required;

  CxPageFormParameter({
    this.advancedSettings,
    this.defaultValue,
    this.displayName,
    this.entityType,
    this.fillBehavior,
    this.isList,
    this.redact,
    this.required,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final advancedSettingsValue = advancedSettings;
    if (advancedSettingsValue != null) {
      map['advancedSettings'] = advancedSettingsValue.toMap();
    }
    final defaultValueValue = defaultValue;
    if (defaultValueValue != null) {
      map['defaultValue'] = defaultValueValue;
    }
    final displayNameValue = displayName;
    if (displayNameValue != null) {
      map['displayName'] = displayNameValue;
    }
    final entityTypeValue = entityType;
    if (entityTypeValue != null) {
      map['entityType'] = entityTypeValue;
    }
    final fillBehaviorValue = fillBehavior;
    if (fillBehaviorValue != null) {
      map['fillBehavior'] = fillBehaviorValue.toMap();
    }
    final isListValue = isList;
    if (isListValue != null) {
      map['isList'] = isListValue;
    }
    final redactValue = redact;
    if (redactValue != null) {
      map['redact'] = redactValue;
    }
    final requiredValue = required;
    if (requiredValue != null) {
      map['required'] = requiredValue;
    }
    return map;
  }

  factory CxPageFormParameter.fromMap(Map<String, dynamic> map) {
    return CxPageFormParameter(
      advancedSettings: map['advancedSettings'] == null
          ? null
          : CxPageFormParameterAdvancedSettings.fromMap(
              (map['advancedSettings'] as Map).cast<String, dynamic>()),
      defaultValue:
          map['defaultValue'] == null ? null : map['defaultValue'] as String,
      displayName:
          map['displayName'] == null ? null : map['displayName'] as String,
      entityType:
          map['entityType'] == null ? null : map['entityType'] as String,
      fillBehavior: map['fillBehavior'] == null
          ? null
          : CxPageFormParameterFillBehavior.fromMap(
              (map['fillBehavior'] as Map).cast<String, dynamic>()),
      isList: map['isList'] == null ? null : map['isList'] as bool,
      redact: map['redact'] == null ? null : map['redact'] as bool,
      required: map['required'] == null ? null : map['required'] as bool,
    );
  }
}
