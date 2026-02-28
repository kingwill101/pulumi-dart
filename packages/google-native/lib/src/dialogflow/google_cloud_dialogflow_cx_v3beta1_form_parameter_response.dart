// ignore_for_file: unused_element, unnecessary_cast

import 'google_cloud_dialogflow_cx_v3beta1_advanced_settings_response.dart';
import 'google_cloud_dialogflow_cx_v3beta1_form_parameter_fill_behavior_response.dart';

/// Represents a form parameter.
class GoogleCloudDialogflowCxV3beta1FormParameterResponse {
  /// Hierarchical advanced settings for this parameter. The settings exposed at the lower level overrides the settings exposed at the higher level.
  final GoogleCloudDialogflowCxV3beta1AdvancedSettingsResponse advancedSettings;
  /// The default value of an optional parameter. If the parameter is required, the default value will be ignored.
  final dynamic defaultValue;
  /// The human-readable name of the parameter, unique within the form.
  final String displayName;
  /// The entity type of the parameter. Format: `projects/-/locations/-/agents/-/entityTypes/` for system entity types (for example, `projects/-/locations/-/agents/-/entityTypes/sys.date`), or `projects//locations//agents//entityTypes/` for developer entity types.
  final String entityType;
  /// Defines fill behavior for the parameter.
  final GoogleCloudDialogflowCxV3beta1FormParameterFillBehaviorResponse fillBehavior;
  /// Indicates whether the parameter represents a list of values.
  final bool isList;
  /// Indicates whether the parameter content should be redacted in log. If redaction is enabled, the parameter content will be replaced by parameter name during logging. Note: the parameter content is subject to redaction if either parameter level redaction or entity type level redaction is enabled.
  final bool redact;
  /// Indicates whether the parameter is required. Optional parameters will not trigger prompts; however, they are filled if the user specifies them. Required parameters must be filled before form filling concludes.
  final bool required;

  /// Creates a new [GoogleCloudDialogflowCxV3beta1FormParameterResponse].
  /// [advancedSettings] Hierarchical advanced settings for this parameter. The settings exposed at the lower level overrides the settings exposed at the higher level.
  /// [defaultValue] The default value of an optional parameter. If the parameter is required, the default value will be ignored.
  /// [displayName] The human-readable name of the parameter, unique within the form.
  /// [entityType] The entity type of the parameter. Format: `projects/-/locations/-/agents/-/entityTypes/` for system entity types (for example, `projects/-/locations/-/agents/-/entityTypes/sys.date`), or `projects//locations//agents//entityTypes/` for developer entity types.
  /// [fillBehavior] Defines fill behavior for the parameter.
  /// [isList] Indicates whether the parameter represents a list of values.
  /// [redact] Indicates whether the parameter content should be redacted in log. If redaction is enabled, the parameter content will be replaced by parameter name during logging. Note: the parameter content is subject to redaction if either parameter level redaction or entity type level redaction is enabled.
  /// [required] Indicates whether the parameter is required. Optional parameters will not trigger prompts; however, they are filled if the user specifies them. Required parameters must be filled before form filling concludes.
  GoogleCloudDialogflowCxV3beta1FormParameterResponse({
    required this.advancedSettings,
    required this.defaultValue,
    required this.displayName,
    required this.entityType,
    required this.fillBehavior,
    required this.isList,
    required this.redact,
    required this.required,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'advancedSettings': advancedSettings.toMap(),
      'defaultValue': defaultValue,
      'displayName': displayName,
      'entityType': entityType,
      'fillBehavior': fillBehavior.toMap(),
      'isList': isList,
      'redact': redact,
      'required': required,
    };
  }

  factory GoogleCloudDialogflowCxV3beta1FormParameterResponse.fromMap(Map<String, dynamic> map) {
    return GoogleCloudDialogflowCxV3beta1FormParameterResponse(
      advancedSettings: GoogleCloudDialogflowCxV3beta1AdvancedSettingsResponse.fromMap((map['advancedSettings'] as Map).cast<String, dynamic>()),
      defaultValue: map['defaultValue'],
      displayName: map['displayName'] as String,
      entityType: map['entityType'] as String,
      fillBehavior: GoogleCloudDialogflowCxV3beta1FormParameterFillBehaviorResponse.fromMap((map['fillBehavior'] as Map).cast<String, dynamic>()),
      isList: map['isList'] as bool,
      redact: map['redact'] as bool,
      required: map['required'] as bool,
    );
  }
}

