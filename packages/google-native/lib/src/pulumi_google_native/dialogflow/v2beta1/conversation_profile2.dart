import 'package:pulumi/pulumi.dart';
import 'conversation_profile_args2.dart';
import 'google_cloud_dialogflow_v2beta1_automated_agent_config_response.dart';
import 'google_cloud_dialogflow_v2beta1_human_agent_assistant_config_response.dart';
import 'google_cloud_dialogflow_v2beta1_human_agent_handoff_config_response.dart';
import 'google_cloud_dialogflow_v2beta1_logging_config_response.dart';
import 'google_cloud_dialogflow_v2beta1_notification_config_response.dart';
import 'google_cloud_dialogflow_v2beta1_speech_to_text_config_response.dart';
import 'google_cloud_dialogflow_v2beta1_synthesize_speech_config_response.dart';

/// Creates a conversation profile in the specified project. ConversationProfile.CreateTime and ConversationProfile.UpdateTime aren't populated in the response. You can retrieve them via GetConversationProfile API.
class ConversationProfile2 extends CustomResource {
  /// Configuration for an automated agent to use with this profile.
  late final Output<GoogleCloudDialogflowV2beta1AutomatedAgentConfigResponse>
      automatedAgentConfig;

  /// Create time of the conversation profile.
  late final Output<String> createTime;

  /// Human readable name for this profile. Max length 1024 bytes.
  late final Output<String> displayName;

  /// Configuration for agent assistance to use with this profile.
  late final Output<
          GoogleCloudDialogflowV2beta1HumanAgentAssistantConfigResponse>
      humanAgentAssistantConfig;

  /// Configuration for connecting to a live agent. Currently, this feature is not general available, please contact Google to get access.
  late final Output<GoogleCloudDialogflowV2beta1HumanAgentHandoffConfigResponse>
      humanAgentHandoffConfig;

  /// Language code for the conversation profile. If not specified, the language is en-US. Language at ConversationProfile should be set for all non en-us languages. This should be a [BCP-47](https://www.rfc-editor.org/rfc/bcp/bcp47.txt) language tag. Example: "en-US".
  late final Output<String> languageCode;
  late final Output<String> location;

  /// Configuration for logging conversation lifecycle events.
  late final Output<GoogleCloudDialogflowV2beta1LoggingConfigResponse>
      loggingConfig;

  /// The unique identifier of this conversation profile. Format: `projects//locations//conversationProfiles/`.
  late final Output<String> name;

  /// Configuration for publishing new message events. Event will be sent in format of ConversationEvent
  late final Output<GoogleCloudDialogflowV2beta1NotificationConfigResponse>
      newMessageEventNotificationConfig;

  /// Configuration for publishing conversation lifecycle events.
  late final Output<GoogleCloudDialogflowV2beta1NotificationConfigResponse>
      notificationConfig;
  late final Output<String> project;

  /// Name of the CX SecuritySettings reference for the agent. Format: `projects//locations//securitySettings/`.
  late final Output<String> securitySettings;

  /// Settings for speech transcription.
  late final Output<GoogleCloudDialogflowV2beta1SpeechToTextConfigResponse>
      sttConfig;

  /// The time zone of this conversational profile from the [time zone database](https://www.iana.org/time-zones), e.g., America/New_York, Europe/Paris. Defaults to America/New_York.
  late final Output<String> timeZone;

  /// Configuration for Text-to-Speech synthesization. Used by Phone Gateway to specify synthesization options. If agent defines synthesization options as well, agent settings overrides the option here.
  late final Output<GoogleCloudDialogflowV2beta1SynthesizeSpeechConfigResponse>
      ttsConfig;

  /// Update time of the conversation profile.
  late final Output<String> updateTime;

  ConversationProfile2(
    String name, {
    ConversationProfileArgs2? args,
    CustomResourceOptions? options,
  }) : super(
          'google-native:dialogflow/v2beta1:ConversationProfile',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.automatedAgentConfig = Output.createUnknown<
        GoogleCloudDialogflowV2beta1AutomatedAgentConfigResponse>();
    this.createTime = Output.createUnknown<String>();
    this.displayName = Output.createUnknown<String>();
    this.humanAgentAssistantConfig = Output.createUnknown<
        GoogleCloudDialogflowV2beta1HumanAgentAssistantConfigResponse>();
    this.humanAgentHandoffConfig = Output.createUnknown<
        GoogleCloudDialogflowV2beta1HumanAgentHandoffConfigResponse>();
    this.languageCode = Output.createUnknown<String>();
    this.location = Output.createUnknown<String>();
    this.loggingConfig = Output.createUnknown<
        GoogleCloudDialogflowV2beta1LoggingConfigResponse>();
    this.name = Output.createUnknown<String>();
    this.newMessageEventNotificationConfig = Output.createUnknown<
        GoogleCloudDialogflowV2beta1NotificationConfigResponse>();
    this.notificationConfig = Output.createUnknown<
        GoogleCloudDialogflowV2beta1NotificationConfigResponse>();
    this.project = Output.createUnknown<String>();
    this.securitySettings = Output.createUnknown<String>();
    this.sttConfig = Output.createUnknown<
        GoogleCloudDialogflowV2beta1SpeechToTextConfigResponse>();
    this.timeZone = Output.createUnknown<String>();
    this.ttsConfig = Output.createUnknown<
        GoogleCloudDialogflowV2beta1SynthesizeSpeechConfigResponse>();
    this.updateTime = Output.createUnknown<String>();
  }
}
