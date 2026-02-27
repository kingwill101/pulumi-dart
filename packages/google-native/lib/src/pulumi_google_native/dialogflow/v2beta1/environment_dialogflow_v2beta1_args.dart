// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_dialogflow_v2beta1_fulfillment.dart';
import 'google_cloud_dialogflow_v2beta1_text_to_speech_settings.dart';

/// The set of arguments for Environment.
class EnvironmentDialogflowV2beta1Args {
  /// Optional. The agent version loaded into this environment. Supported formats: - `projects//agent/versions/` - `projects//locations//agent/versions/`
  final pulumi.Input<String>? agentVersion;

  /// Optional. The developer-provided description for this environment. The maximum length is 500 characters. If exceeded, the request is rejected.
  final pulumi.Input<String>? description;

  /// Required. The unique id of the new environment.
  final pulumi.Input<String> environmentId;

  /// Optional. The fulfillment settings to use for this environment.
  final pulumi.Input<GoogleCloudDialogflowV2beta1Fulfillment>? fulfillment;
  final pulumi.Input<String>? location;
  final pulumi.Input<String>? project;

  /// Optional. Text to speech settings for this environment.
  final pulumi.Input<GoogleCloudDialogflowV2beta1TextToSpeechSettings>?
      textToSpeechSettings;

  EnvironmentDialogflowV2beta1Args({
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
      map['fulfillment'] = pulumi.Input.mapOptionalInputValue<
          GoogleCloudDialogflowV2beta1Fulfillment,
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
      map['textToSpeechSettings'] = pulumi.Input.mapOptionalInputValue<
              GoogleCloudDialogflowV2beta1TextToSpeechSettings,
              Map<String, dynamic>>(
          textToSpeechSettingsValue, (value) => value.toMap());
    }
    return map;
  }

  factory EnvironmentDialogflowV2beta1Args.fromMap(Map<String, dynamic> map) {
    return EnvironmentDialogflowV2beta1Args(
      agentVersion: pulumi.Input.asOptionalInput<String>(map['agentVersion']),
      description: pulumi.Input.asOptionalInput<String>(map['description']),
      environmentId: pulumi.Input.asInput<String>(map['environmentId']),
      fulfillment:
          pulumi.Input.asOptionalInput<GoogleCloudDialogflowV2beta1Fulfillment>(
              map['fulfillment']),
      location: pulumi.Input.asOptionalInput<String>(map['location']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      textToSpeechSettings: pulumi.Input.asOptionalInput<
              GoogleCloudDialogflowV2beta1TextToSpeechSettings>(
          map['textToSpeechSettings']),
    );
  }
}
