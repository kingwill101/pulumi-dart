// ignore_for_file: unused_element, unnecessary_cast

import 'google_cloud_dialogflow_v2_fulfillment_response.dart';
import 'google_cloud_dialogflow_v2_text_to_speech_settings_response.dart';

/// Result data returned by getEnvironment.
class GetEnvironmentResult5 {
  /// Optional. The agent version loaded into this environment. Supported formats: - `projects//agent/versions/` - `projects//locations//agent/versions/`
  final String agentVersion;

  /// Optional. The developer-provided description for this environment. The maximum length is 500 characters. If exceeded, the request is rejected.
  final String description;

  /// Optional. The fulfillment settings to use for this environment.
  final GoogleCloudDialogflowV2FulfillmentResponse fulfillment;

  /// The unique identifier of this agent environment. Supported formats: - `projects//agent/environments/` - `projects//locations//agent/environments/` The environment ID for the default environment is `-`.
  final String name;

  /// The state of this environment. This field is read-only, i.e., it cannot be set by create and update methods.
  final String state;

  /// Optional. Text to speech settings for this environment.
  final GoogleCloudDialogflowV2TextToSpeechSettingsResponse
      textToSpeechSettings;

  /// The last update time of this environment. This field is read-only, i.e., it cannot be set by create and update methods.
  final String updateTime;

  GetEnvironmentResult5({
    required this.agentVersion,
    required this.description,
    required this.fulfillment,
    required this.name,
    required this.state,
    required this.textToSpeechSettings,
    required this.updateTime,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['agentVersion'] = agentVersion;
    map['description'] = description;
    map['fulfillment'] = fulfillment.toMap();
    map['name'] = name;
    map['state'] = state;
    map['textToSpeechSettings'] = textToSpeechSettings.toMap();
    map['updateTime'] = updateTime;
    return map;
  }

  factory GetEnvironmentResult5.fromMap(Map<String, dynamic> map) {
    return GetEnvironmentResult5(
      agentVersion: map['agentVersion'] as String,
      description: map['description'] as String,
      fulfillment: GoogleCloudDialogflowV2FulfillmentResponse.fromMap(
          (map['fulfillment'] as Map).cast<String, dynamic>()),
      name: map['name'] as String,
      state: map['state'] as String,
      textToSpeechSettings:
          GoogleCloudDialogflowV2TextToSpeechSettingsResponse.fromMap(
              (map['textToSpeechSettings'] as Map).cast<String, dynamic>()),
      updateTime: map['updateTime'] as String,
    );
  }
}
