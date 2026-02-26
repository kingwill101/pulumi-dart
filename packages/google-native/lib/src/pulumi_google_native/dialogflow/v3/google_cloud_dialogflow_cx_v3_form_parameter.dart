// ignore_for_file: unused_element, unnecessary_cast

import 'google_cloud_dialogflow_cx_v3_advanced_settings.dart';
import 'google_cloud_dialogflow_cx_v3_form_parameter_fill_behavior.dart';

/// Represents a form parameter.
class GoogleCloudDialogflowCxV3FormParameter {
  /// Hierarchical advanced settings for this parameter. The settings exposed at the lower level overrides the settings exposed at the higher level.
  final GoogleCloudDialogflowCxV3AdvancedSettings? advancedSettings;

  /// The default value of an optional parameter. If the parameter is required, the default value will be ignored.
  final dynamic defaultValue;

  /// The human-readable name of the parameter, unique within the form.
  final String displayName;

  /// The entity type of the parameter. Format: `projects/-/locations/-/agents/-/entityTypes/` for system entity types (for example, `projects/-/locations/-/agents/-/entityTypes/sys.date`), or `projects//locations//agents//entityTypes/` for developer entity types.
  final String entityType;

  /// Defines fill behavior for the parameter.
  final GoogleCloudDialogflowCxV3FormParameterFillBehavior fillBehavior;

  /// Indicates whether the parameter represents a list of values.
  final bool? isList;

  /// Indicates whether the parameter content should be redacted in log. If redaction is enabled, the parameter content will be replaced by parameter name during logging. Note: the parameter content is subject to redaction if either parameter level redaction or entity type level redaction is enabled.
  final bool? redact;

  /// Indicates whether the parameter is required. Optional parameters will not trigger prompts; however, they are filled if the user specifies them. Required parameters must be filled before form filling concludes.
  final bool? required;

  GoogleCloudDialogflowCxV3FormParameter({
    this.advancedSettings,
    this.defaultValue,
    required this.displayName,
    required this.entityType,
    required this.fillBehavior,
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
    map['displayName'] = displayName;
    map['entityType'] = entityType;
    map['fillBehavior'] = fillBehavior.toMap();
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

  factory GoogleCloudDialogflowCxV3FormParameter.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudDialogflowCxV3FormParameter(
      advancedSettings: map['advancedSettings'] == null
          ? null
          : GoogleCloudDialogflowCxV3AdvancedSettings.fromMap(
              (map['advancedSettings'] as Map).cast<String, dynamic>()),
      defaultValue: map['defaultValue'] == null ? null : map['defaultValue'],
      displayName: map['displayName'] as String,
      entityType: map['entityType'] as String,
      fillBehavior: GoogleCloudDialogflowCxV3FormParameterFillBehavior.fromMap(
          (map['fillBehavior'] as Map).cast<String, dynamic>()),
      isList: map['isList'] == null ? null : map['isList'] as bool,
      redact: map['redact'] == null ? null : map['redact'] as bool,
      required: map['required'] == null ? null : map['required'] as bool,
    );
  }
}
