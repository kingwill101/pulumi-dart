import 'package:pulumi/pulumi.dart';
import '../conversation_profile_automated_agent_config/conversation_profile_automated_agent_config.dart';
import '../conversation_profile_human_agent_assistant_config/conversation_profile_human_agent_assistant_config.dart';
import '../conversation_profile_human_agent_handoff_config/conversation_profile_human_agent_handoff_config.dart';
import '../conversation_profile_logging_config/conversation_profile_logging_config.dart';
import '../conversation_profile_new_message_event_notification_config/conversation_profile_new_message_event_notification_config.dart';
import '../conversation_profile_new_recognition_result_notification_config/conversation_profile_new_recognition_result_notification_config.dart';
import '../conversation_profile_notification_config/conversation_profile_notification_config.dart';
import '../conversation_profile_stt_config/conversation_profile_stt_config.dart';
import '../conversation_profile_tts_config/conversation_profile_tts_config.dart';
import 'conversation_profile_args.dart';

/// A conversation profile configures a set of parameters that control the suggestions made to an agent. These parameters control the suggestions that are surfaced during runtime. Each profile configures either a Dialogflow virtual agent or a human agent for a conversation.
///
///
/// To get more information about ConversationProfile, see:
///
/// * [API documentation](https://docs.cloud.google.com/dialogflow/es/docs/reference/rest/v2/projects.conversationProfiles)
/// * How-to Guides
/// * [Official Documentation](https://cloud.google.com/dialogflow/docs/)
///
/// ## Example Usage
///
/// ### Dialogflow Conversation Profile Basic
///
///
///
/// ### Dialogflow Conversation Profile Recognition Result Notification
///
///
///
///
/// ## Import
///
/// ConversationProfile can be imported using any of these accepted formats:
///
/// * `{{name}}`
///
/// When using the `pulumi import` command, ConversationProfile can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:diagflow/conversationProfile:ConversationProfile default {{name}}
/// ```
class ConversationProfile extends CustomResource {
  /// Configuration for an automated agent to use with this profile
  /// Structure is documented below.
  late final Output<ConversationProfileAutomatedAgentConfig?>
      automatedAgentConfig;

  /// Required. Human readable name for this profile. Max length 1024 bytes.
  late final Output<String> displayName;

  /// Configuration for connecting to a live agent
  /// Structure is documented below.
  late final Output<ConversationProfileHumanAgentAssistantConfig?>
      humanAgentAssistantConfig;

  /// Defines the hand off to a live agent, typically on which external agent service provider to connect to a conversation.
  /// Structure is documented below.
  late final Output<ConversationProfileHumanAgentHandoffConfig?>
      humanAgentHandoffConfig;

  /// Language code for the conversation profile. This should be a BCP-47 language tag.
  late final Output<String> languageCode;

  /// desc
  late final Output<String> location;

  /// Defines logging behavior for conversation lifecycle events.
  /// Structure is documented below.
  late final Output<ConversationProfileLoggingConfig?> loggingConfig;

  /// name
  late final Output<String> name;

  /// Pub/Sub topic on which to publish new agent assistant events.
  /// Expects the format "projects/<Project ID>/locations/<Location ID>/topics/<Topic ID>"
  /// Structure is documented below.
  late final Output<ConversationProfileNewMessageEventNotificationConfig?>
      newMessageEventNotificationConfig;

  /// Optional. Configuration for publishing transcription intermediate results. Event will be sent in format of ConversationEvent. If configured, the following information will be populated as ConversationEvent Pub/Sub message attributes: - "participant_id" - "participantRole" - "message_id"
  /// Structure is documented below.
  late final Output<ConversationProfileNewRecognitionResultNotificationConfig?>
      newRecognitionResultNotificationConfig;

  /// Pub/Sub topic on which to publish new agent assistant events.
  /// Expects the format "projects/<Project ID>/locations/<Location ID>/topics/<Topic ID>"
  /// Structure is documented below.
  late final Output<ConversationProfileNotificationConfig?> notificationConfig;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final Output<String> project;

  /// Name of the CX SecuritySettings reference for the agent.
  late final Output<String?> securitySettings;

  /// Settings for speech transcription.
  /// Structure is documented below.
  late final Output<ConversationProfileSttConfig?> sttConfig;

  /// The time zone of this conversational profile.
  late final Output<String?> timeZone;

  /// Configuration for Text-to-Speech synthesization. If agent defines synthesization options as well, agent settings overrides the option here.
  /// Structure is documented below.
  late final Output<ConversationProfileTtsConfig?> ttsConfig;

  ConversationProfile(
    String name, {
    ConversationProfileArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:diagflow/conversationProfile:ConversationProfile',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.automatedAgentConfig =
        registerOutput<ConversationProfileAutomatedAgentConfig?>(
            'automatedAgentConfig');
    this.displayName = registerOutput<String>('displayName');
    this.humanAgentAssistantConfig =
        registerOutput<ConversationProfileHumanAgentAssistantConfig?>(
            'humanAgentAssistantConfig');
    this.humanAgentHandoffConfig =
        registerOutput<ConversationProfileHumanAgentHandoffConfig?>(
            'humanAgentHandoffConfig');
    this.languageCode = registerOutput<String>('languageCode');
    this.location = registerOutput<String>('location');
    this.loggingConfig =
        registerOutput<ConversationProfileLoggingConfig?>('loggingConfig');
    this.name = registerOutput<String>('name');
    this.newMessageEventNotificationConfig =
        registerOutput<ConversationProfileNewMessageEventNotificationConfig?>(
            'newMessageEventNotificationConfig');
    this.newRecognitionResultNotificationConfig = registerOutput<
            ConversationProfileNewRecognitionResultNotificationConfig?>(
        'newRecognitionResultNotificationConfig');
    this.notificationConfig =
        registerOutput<ConversationProfileNotificationConfig?>(
            'notificationConfig');
    this.project = registerOutput<String>('project');
    this.securitySettings = registerOutput<String?>('securitySettings');
    this.sttConfig = registerOutput<ConversationProfileSttConfig?>('sttConfig');
    this.timeZone = registerOutput<String?>('timeZone');
    this.ttsConfig = registerOutput<ConversationProfileTtsConfig?>('ttsConfig');
  }
}
