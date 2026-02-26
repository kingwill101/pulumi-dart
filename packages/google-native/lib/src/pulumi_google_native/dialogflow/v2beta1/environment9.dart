import 'package:pulumi/pulumi.dart';
import 'environment_args6.dart';
import 'google_cloud_dialogflow_v2beta1_fulfillment_response.dart';
import 'google_cloud_dialogflow_v2beta1_text_to_speech_settings_response.dart';

/// Creates an agent environment.
/// Auto-naming is currently not supported for this resource.
class Environment9 extends CustomResource {
  /// Optional. The agent version loaded into this environment. Supported formats: - `projects//agent/versions/` - `projects//locations//agent/versions/`
  late final Output<String> agentVersion;

  /// Optional. The developer-provided description for this environment. The maximum length is 500 characters. If exceeded, the request is rejected.
  late final Output<String> description;

  /// Required. The unique id of the new environment.
  late final Output<String> environmentId;

  /// Optional. The fulfillment settings to use for this environment.
  late final Output<GoogleCloudDialogflowV2beta1FulfillmentResponse>
      fulfillment;
  late final Output<String> location;

  /// The unique identifier of this agent environment. Supported formats: - `projects//agent/environments/` - `projects//locations//agent/environments/`
  late final Output<String> name;
  late final Output<String> project;

  /// The state of this environment. This field is read-only, i.e., it cannot be set by create and update methods.
  late final Output<String> state;

  /// Optional. Text to speech settings for this environment.
  late final Output<GoogleCloudDialogflowV2beta1TextToSpeechSettingsResponse>
      textToSpeechSettings;

  /// The last update time of this environment. This field is read-only, i.e., it cannot be set by create and update methods.
  late final Output<String> updateTime;

  Environment9(
    String name, {
    EnvironmentArgs6? args,
    CustomResourceOptions? options,
  }) : super(
          'google-native:dialogflow/v2beta1:Environment',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.agentVersion = registerOutput<String>('agentVersion');
    this.description = registerOutput<String>('description');
    this.environmentId = registerOutput<String>('environmentId');
    this.fulfillment =
        registerOutput<GoogleCloudDialogflowV2beta1FulfillmentResponse>(
            'fulfillment');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.state = registerOutput<String>('state');
    this.textToSpeechSettings = registerOutput<
            GoogleCloudDialogflowV2beta1TextToSpeechSettingsResponse>(
        'textToSpeechSettings');
    this.updateTime = registerOutput<String>('updateTime');
  }
}
