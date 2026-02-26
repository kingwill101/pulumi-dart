import 'package:pulumi/pulumi.dart';
import 'conversation_args.dart';
import 'google_cloud_contactcenterinsights_v1_analysis_response.dart';
import 'google_cloud_contactcenterinsights_v1_conversation_call_metadata_response.dart';
import 'google_cloud_contactcenterinsights_v1_conversation_data_source_response.dart';
import 'google_cloud_contactcenterinsights_v1_conversation_summarization_suggestion_data_response.dart';
import 'google_cloud_contactcenterinsights_v1_conversation_transcript_response.dart';
import 'google_cloud_contactcenterinsights_v1_runtime_annotation_response.dart';

/// Creates a conversation.
class Conversation extends CustomResource {
  /// An opaque, user-specified string representing the human agent who handled the conversation.
  late final Output<String> agentId;

  /// Call-specific metadata.
  late final Output<
          GoogleCloudContactcenterinsightsV1ConversationCallMetadataResponse>
      callMetadata;

  /// A unique ID for the new conversation. This ID will become the final component of the conversation's resource name. If no ID is specified, a server-generated ID will be used. This value should be 4-64 characters and must match the regular expression `^[a-z0-9-]{4,64}$`. Valid characters are `a-z-`
  late final Output<String?> conversationId;

  /// The time at which the conversation was created.
  late final Output<String> createTime;

  /// The source of the audio and transcription for the conversation.
  late final Output<
          GoogleCloudContactcenterinsightsV1ConversationDataSourceResponse>
      dataSource;

  /// All the matched Dialogflow intents in the call. The key corresponds to a Dialogflow intent, format: projects/{project}/agent/{agent}/intents/{intent}
  late final Output<Map<String, String>> dialogflowIntents;

  /// The duration of the conversation.
  late final Output<String> duration;

  /// The time at which this conversation should expire. After this time, the conversation data and any associated analyses will be deleted.
  late final Output<String> expireTime;

  /// A map for the user to specify any custom fields. A maximum of 20 labels per conversation is allowed, with a maximum of 256 characters per entry.
  late final Output<Map<String, String>> labels;

  /// A user-specified language code for the conversation.
  late final Output<String> languageCode;

  /// The conversation's latest analysis, if one exists.
  late final Output<GoogleCloudContactcenterinsightsV1AnalysisResponse>
      latestAnalysis;

  /// Latest summary of the conversation.
  late final Output<
          GoogleCloudContactcenterinsightsV1ConversationSummarizationSuggestionDataResponse>
      latestSummary;
  late final Output<String> location;

  /// Immutable. The conversation medium, if unspecified will default to PHONE_CALL.
  late final Output<String> medium;

  /// Immutable. The resource name of the conversation. Format: projects/{project}/locations/{location}/conversations/{conversation}
  late final Output<String> name;

  /// Obfuscated user ID which the customer sent to us.
  late final Output<String> obfuscatedUserId;
  late final Output<String> project;

  /// The annotations that were generated during the customer and agent interaction.
  late final Output<
          List<GoogleCloudContactcenterinsightsV1RuntimeAnnotationResponse>>
      runtimeAnnotations;

  /// The time at which the conversation started.
  late final Output<String> startTime;

  /// The conversation transcript.
  late final Output<
          GoogleCloudContactcenterinsightsV1ConversationTranscriptResponse>
      transcript;

  /// Input only. The TTL for this resource. If specified, then this TTL will be used to calculate the expire time.
  late final Output<String> ttl;

  /// The number of turns in the conversation.
  late final Output<int> turnCount;

  /// The most recent time at which the conversation was updated.
  late final Output<String> updateTime;

  Conversation(
    String name, {
    ConversationArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'google-native:contactcenterinsights/v1:Conversation',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.agentId = Output.createUnknown<String>();
    this.callMetadata = Output.createUnknown<
        GoogleCloudContactcenterinsightsV1ConversationCallMetadataResponse>();
    this.conversationId = Output.createUnknown<String?>();
    this.createTime = Output.createUnknown<String>();
    this.dataSource = Output.createUnknown<
        GoogleCloudContactcenterinsightsV1ConversationDataSourceResponse>();
    this.dialogflowIntents = Output.createUnknown<Map<String, String>>();
    this.duration = Output.createUnknown<String>();
    this.expireTime = Output.createUnknown<String>();
    this.labels = Output.createUnknown<Map<String, String>>();
    this.languageCode = Output.createUnknown<String>();
    this.latestAnalysis = Output.createUnknown<
        GoogleCloudContactcenterinsightsV1AnalysisResponse>();
    this.latestSummary = Output.createUnknown<
        GoogleCloudContactcenterinsightsV1ConversationSummarizationSuggestionDataResponse>();
    this.location = Output.createUnknown<String>();
    this.medium = Output.createUnknown<String>();
    this.name = Output.createUnknown<String>();
    this.obfuscatedUserId = Output.createUnknown<String>();
    this.project = Output.createUnknown<String>();
    this.runtimeAnnotations = Output.createUnknown<
        List<GoogleCloudContactcenterinsightsV1RuntimeAnnotationResponse>>();
    this.startTime = Output.createUnknown<String>();
    this.transcript = Output.createUnknown<
        GoogleCloudContactcenterinsightsV1ConversationTranscriptResponse>();
    this.ttl = Output.createUnknown<String>();
    this.turnCount = Output.createUnknown<int>();
    this.updateTime = Output.createUnknown<String>();
  }
}
