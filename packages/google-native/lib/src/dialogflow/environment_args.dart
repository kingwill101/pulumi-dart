// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_dialogflow_v2_fulfillment.dart';
import 'google_cloud_dialogflow_v2_text_to_speech_settings.dart';

/// {@template pulumi_dialogflow_v2_environment_args_doc}
/// The set of arguments for Environment.
/// {@endtemplate}
/// {@macro pulumi_dialogflow_v2_environment_args_doc}
class EnvironmentArgs {
  /// Optional. The agent version loaded into this environment. Supported formats: - `projects//agent/versions/` - `projects//locations//agent/versions/`
  final pulumi.Input<String>? agentVersion;
  /// Optional. The developer-provided description for this environment. The maximum length is 500 characters. If exceeded, the request is rejected.
  final pulumi.Input<String>? description;
  /// Required. The unique id of the new environment.
  final pulumi.Input<String> environmentId;
  /// Optional. The fulfillment settings to use for this environment.
  final pulumi.Input<GoogleCloudDialogflowV2Fulfillment>? fulfillment;
  final pulumi.Input<String>? location;
  final pulumi.Input<String>? project;
  /// Optional. Text to speech settings for this environment.
  final pulumi.Input<GoogleCloudDialogflowV2TextToSpeechSettings>? textToSpeechSettings;

  /// Creates a new [EnvironmentArgs].
  /// [agentVersion] Optional. The agent version loaded into this environment. Supported formats: - `projects//agent/versions/` - `projects//locations//agent/versions/`
  /// [description] Optional. The developer-provided description for this environment. The maximum length is 500 characters. If exceeded, the request is rejected.
  /// [environmentId] Required. The unique id of the new environment.
  /// [fulfillment] Optional. The fulfillment settings to use for this environment.
  /// [location] Optional.
  /// [project] Optional.
  /// [textToSpeechSettings] Optional. Text to speech settings for this environment.
  EnvironmentArgs({
    String? agentVersion,
    String? description,
    required String environmentId,
    GoogleCloudDialogflowV2Fulfillment? fulfillment,
    String? location,
    String? project,
    GoogleCloudDialogflowV2TextToSpeechSettings? textToSpeechSettings,
  }) :
      agentVersion = pulumi.Input.asOptionalInput<String>(agentVersion),
      description = pulumi.Input.asOptionalInput<String>(description),
      environmentId = pulumi.Input.asInput<String>(environmentId),
      fulfillment = pulumi.Input.asOptionalInput<GoogleCloudDialogflowV2Fulfillment>(fulfillment),
      location = pulumi.Input.asOptionalInput<String>(location),
      project = pulumi.Input.asOptionalInput<String>(project),
      textToSpeechSettings = pulumi.Input.asOptionalInput<GoogleCloudDialogflowV2TextToSpeechSettings>(textToSpeechSettings);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'agentVersion': ?agentVersion,
      'description': ?description,
      'environmentId': environmentId,
      'fulfillment': ?pulumi.Input.mapOptionalInputValue<GoogleCloudDialogflowV2Fulfillment, Map<String, dynamic>>(fulfillment, (value) => value.toMap()),
      'location': ?location,
      'project': ?project,
      'textToSpeechSettings': ?pulumi.Input.mapOptionalInputValue<GoogleCloudDialogflowV2TextToSpeechSettings, Map<String, dynamic>>(textToSpeechSettings, (value) => value.toMap()),
    };
  }

  factory EnvironmentArgs.fromMap(Map<String, dynamic> map) {
    return EnvironmentArgs(
      agentVersion: map['agentVersion'] == null ? null : map['agentVersion'] as String,
      description: map['description'] == null ? null : map['description'] as String,
      environmentId: map['environmentId'] as String,
      fulfillment: map['fulfillment'] == null ? null : GoogleCloudDialogflowV2Fulfillment.fromMap((map['fulfillment'] as Map).cast<String, dynamic>()),
      location: map['location'] == null ? null : map['location'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      textToSpeechSettings: map['textToSpeechSettings'] == null ? null : GoogleCloudDialogflowV2TextToSpeechSettings.fromMap((map['textToSpeechSettings'] as Map).cast<String, dynamic>()),
    );
  }
}

