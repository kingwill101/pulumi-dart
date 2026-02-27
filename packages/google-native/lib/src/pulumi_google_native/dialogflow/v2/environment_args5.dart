// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;
import 'google_cloud_dialogflow_v2_fulfillment.dart';
import 'google_cloud_dialogflow_v2_text_to_speech_settings.dart';

/// The set of arguments for Environment.
class EnvironmentArgs5 {
  /// Optional. The agent version loaded into this environment. Supported formats: - `projects//agent/versions/` - `projects//locations//agent/versions/`
  final Input<String>? agentVersion;

  /// Optional. The developer-provided description for this environment. The maximum length is 500 characters. If exceeded, the request is rejected.
  final Input<String>? description;

  /// Required. The unique id of the new environment.
  final Input<String> environmentId;

  /// Optional. The fulfillment settings to use for this environment.
  final Input<GoogleCloudDialogflowV2Fulfillment>? fulfillment;
  final Input<String>? location;
  final Input<String>? project;

  /// Optional. Text to speech settings for this environment.
  final Input<GoogleCloudDialogflowV2TextToSpeechSettings>?
      textToSpeechSettings;

  EnvironmentArgs5({
    this.agentVersion,
    this.description,
    required this.environmentId,
    this.fulfillment,
    this.location,
    this.project,
    this.textToSpeechSettings,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final agentVersionValue = agentVersion;
    if (agentVersionValue != null) {
      map['agentVersion'] = agentVersionValue;
    }
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    map['environmentId'] = environmentId;
    final fulfillmentValue = fulfillment;
    if (fulfillmentValue != null) {
      map['fulfillment'] = Input.mapOptionalInputValue<
          GoogleCloudDialogflowV2Fulfillment,
          Map<String, dynamic>>(fulfillmentValue, (value) => value.toMap());
    }
    final locationValue = location;
    if (locationValue != null) {
      map['location'] = locationValue;
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    final textToSpeechSettingsValue = textToSpeechSettings;
    if (textToSpeechSettingsValue != null) {
      map['textToSpeechSettings'] = Input.mapOptionalInputValue<
              GoogleCloudDialogflowV2TextToSpeechSettings,
              Map<String, dynamic>>(
          textToSpeechSettingsValue, (value) => value.toMap());
    }
    return map;
  }

  factory EnvironmentArgs5.fromMap(Map<String, dynamic> map) {
    return EnvironmentArgs5(
      agentVersion: Input.asOptionalInput<String>(map['agentVersion']),
      description: Input.asOptionalInput<String>(map['description']),
      environmentId: Input.asInput<String>(map['environmentId']),
      fulfillment: Input.asOptionalInput<GoogleCloudDialogflowV2Fulfillment>(
          map['fulfillment']),
      location: Input.asOptionalInput<String>(map['location']),
      project: Input.asOptionalInput<String>(map['project']),
      textToSpeechSettings:
          Input.asOptionalInput<GoogleCloudDialogflowV2TextToSpeechSettings>(
              map['textToSpeechSettings']),
    );
  }
}
