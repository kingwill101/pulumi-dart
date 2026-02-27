import 'package:pulumi/pulumi.dart' as pulumi;
import 'conversation_profile_args.dart';
import 'google_cloud_dialogflow_v2_automated_agent_config_response.dart';
import 'google_cloud_dialogflow_v2_human_agent_assistant_config_response.dart';
import 'google_cloud_dialogflow_v2_human_agent_handoff_config_response.dart';
import 'google_cloud_dialogflow_v2_logging_config_response.dart';
import 'google_cloud_dialogflow_v2_notification_config_response.dart';
import 'google_cloud_dialogflow_v2_speech_to_text_config_response.dart';
import 'google_cloud_dialogflow_v2_synthesize_speech_config_response.dart';

/// Creates a conversation profile in the specified project. ConversationProfile.CreateTime and ConversationProfile.UpdateTime aren't populated in the response. You can retrieve them via GetConversationProfile API.
class ConversationProfile extends pulumi.CustomResource {
  /// Configuration for an automated agent to use with this profile.
  late final pulumi.Output<GoogleCloudDialogflowV2AutomatedAgentConfigResponse>
      automatedAgentConfig;

  /// Create time of the conversation profile.
  late final pulumi.Output<String> createTime;

  /// Human readable name for this profile. Max length 1024 bytes.
  late final pulumi.Output<String> displayName;

  /// Configuration for agent assistance to use with this profile.
  late final pulumi
      .Output<GoogleCloudDialogflowV2HumanAgentAssistantConfigResponse>
      humanAgentAssistantConfig;

  /// Configuration for connecting to a live agent. Currently, this feature is not general available, please contact Google to get access.
  late final pulumi
      .Output<GoogleCloudDialogflowV2HumanAgentHandoffConfigResponse>
      humanAgentHandoffConfig;

  /// Language code for the conversation profile. If not specified, the language is en-US. Language at ConversationProfile should be set for all non en-US languages. This should be a [BCP-47](https://www.rfc-editor.org/rfc/bcp/bcp47.txt) language tag. Example: "en-US".
  late final pulumi.Output<String> languageCode;
  late final pulumi.Output<String> location;

  /// Configuration for logging conversation lifecycle events.
  late final pulumi.Output<GoogleCloudDialogflowV2LoggingConfigResponse>
      loggingConfig;

  /// The unique identifier of this conversation profile. Format: `projects//locations//conversationProfiles/`.
  late final pulumi.Output<String> name;

  /// Configuration for publishing new message events. Event will be sent in format of ConversationEvent
  late final pulumi.Output<GoogleCloudDialogflowV2NotificationConfigResponse>
      newMessageEventNotificationConfig;

  /// Configuration for publishing conversation lifecycle events.
  late final pulumi.Output<GoogleCloudDialogflowV2NotificationConfigResponse>
      notificationConfig;
  late final pulumi.Output<String> project;

  /// Name of the CX SecuritySettings reference for the agent. Format: `projects//locations//securitySettings/`.
  late final pulumi.Output<String> securitySettings;

  /// Settings for speech transcription.
  late final pulumi.Output<GoogleCloudDialogflowV2SpeechToTextConfigResponse>
      sttConfig;

  /// The time zone of this conversational profile from the [time zone database](https://www.iana.org/time-zones), e.g., America/New_York, Europe/Paris. Defaults to America/New_York.
  late final pulumi.Output<String> timeZone;

  /// Configuration for Text-to-Speech synthesization. Used by Phone Gateway to specify synthesization options. If agent defines synthesization options as well, agent settings overrides the option here.
  late final pulumi
      .Output<GoogleCloudDialogflowV2SynthesizeSpeechConfigResponse> ttsConfig;

  /// Update time of the conversation profile.
  late final pulumi.Output<String> updateTime;

  ConversationProfile(
    String name, {
    ConversationProfileArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'google-native:dialogflow/v2:ConversationProfile',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.automatedAgentConfig =
        registerOutput<GoogleCloudDialogflowV2AutomatedAgentConfigResponse>(
            'automatedAgentConfig');
    this.createTime = registerOutput<String>('createTime');
    this.displayName = registerOutput<String>('displayName');
    this.humanAgentAssistantConfig = registerOutput<
            GoogleCloudDialogflowV2HumanAgentAssistantConfigResponse>(
        'humanAgentAssistantConfig');
    this.humanAgentHandoffConfig =
        registerOutput<GoogleCloudDialogflowV2HumanAgentHandoffConfigResponse>(
            'humanAgentHandoffConfig');
    this.languageCode = registerOutput<String>('languageCode');
    this.location = registerOutput<String>('location');
    this.loggingConfig =
        registerOutput<GoogleCloudDialogflowV2LoggingConfigResponse>(
            'loggingConfig');
    this.name = registerOutput<String>('name');
    this.newMessageEventNotificationConfig =
        registerOutput<GoogleCloudDialogflowV2NotificationConfigResponse>(
            'newMessageEventNotificationConfig');
    this.notificationConfig =
        registerOutput<GoogleCloudDialogflowV2NotificationConfigResponse>(
            'notificationConfig');
    this.project = registerOutput<String>('project');
    this.securitySettings = registerOutput<String>('securitySettings');
    this.sttConfig =
        registerOutput<GoogleCloudDialogflowV2SpeechToTextConfigResponse>(
            'sttConfig');
    this.timeZone = registerOutput<String>('timeZone');
    this.ttsConfig =
        registerOutput<GoogleCloudDialogflowV2SynthesizeSpeechConfigResponse>(
            'ttsConfig');
    this.updateTime = registerOutput<String>('updateTime');
  }
}
