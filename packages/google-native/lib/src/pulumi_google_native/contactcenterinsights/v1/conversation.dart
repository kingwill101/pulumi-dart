import 'package:pulumi/pulumi.dart' as pulumi;
import 'conversation_args.dart';
import 'google_cloud_contactcenterinsights_v1_analysis_response.dart';
import 'google_cloud_contactcenterinsights_v1_conversation_call_metadata_response.dart';
import 'google_cloud_contactcenterinsights_v1_conversation_data_source_response.dart';
import 'google_cloud_contactcenterinsights_v1_conversation_summarization_suggestion_data_response.dart';
import 'google_cloud_contactcenterinsights_v1_conversation_transcript_response.dart';
import 'google_cloud_contactcenterinsights_v1_runtime_annotation_response.dart';

/// Creates a conversation.
class Conversation extends pulumi.CustomResource {
  /// An opaque, user-specified string representing the human agent who handled the conversation.
  late final pulumi.Output<String> agentId;

  /// Call-specific metadata.
  late final pulumi.Output<
          GoogleCloudContactcenterinsightsV1ConversationCallMetadataResponse>
      callMetadata;

  /// A unique ID for the new conversation. This ID will become the final component of the conversation's resource name. If no ID is specified, a server-generated ID will be used. This value should be 4-64 characters and must match the regular expression `^[a-z0-9-]{4,64}$`. Valid characters are `a-z-`
  late final pulumi.Output<String?> conversationId;

  /// The time at which the conversation was created.
  late final pulumi.Output<String> createTime;

  /// The source of the audio and transcription for the conversation.
  late final pulumi
      .Output<GoogleCloudContactcenterinsightsV1ConversationDataSourceResponse>
      dataSource;

  /// All the matched Dialogflow intents in the call. The key corresponds to a Dialogflow intent, format: projects/{project}/agent/{agent}/intents/{intent}
  late final pulumi.Output<Map<String, String>> dialogflowIntents;

  /// The duration of the conversation.
  late final pulumi.Output<String> duration;

  /// The time at which this conversation should expire. After this time, the conversation data and any associated analyses will be deleted.
  late final pulumi.Output<String> expireTime;

  /// A map for the user to specify any custom fields. A maximum of 20 labels per conversation is allowed, with a maximum of 256 characters per entry.
  late final pulumi.Output<Map<String, String>> labels;

  /// A user-specified language code for the conversation.
  late final pulumi.Output<String> languageCode;

  /// The conversation's latest analysis, if one exists.
  late final pulumi.Output<GoogleCloudContactcenterinsightsV1AnalysisResponse>
      latestAnalysis;

  /// Latest summary of the conversation.
  late final pulumi.Output<
          GoogleCloudContactcenterinsightsV1ConversationSummarizationSuggestionDataResponse>
      latestSummary;
  late final pulumi.Output<String> location;

  /// Immutable. The conversation medium, if unspecified will default to PHONE_CALL.
  late final pulumi.Output<String> medium;

  /// Immutable. The resource name of the conversation. Format: projects/{project}/locations/{location}/conversations/{conversation}
  late final pulumi.Output<String> name;

  /// Obfuscated user ID which the customer sent to us.
  late final pulumi.Output<String> obfuscatedUserId;
  late final pulumi.Output<String> project;

  /// The annotations that were generated during the customer and agent interaction.
  late final pulumi
      .Output<List<GoogleCloudContactcenterinsightsV1RuntimeAnnotationResponse>>
      runtimeAnnotations;

  /// The time at which the conversation started.
  late final pulumi.Output<String> startTime;

  /// The conversation transcript.
  late final pulumi
      .Output<GoogleCloudContactcenterinsightsV1ConversationTranscriptResponse>
      transcript;

  /// Input only. The TTL for this resource. If specified, then this TTL will be used to calculate the expire time.
  late final pulumi.Output<String> ttl;

  /// The number of turns in the conversation.
  late final pulumi.Output<int> turnCount;

  /// The most recent time at which the conversation was updated.
  late final pulumi.Output<String> updateTime;

  Conversation(
    String name, {
    ConversationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'google-native:contactcenterinsights/v1:Conversation',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.agentId = registerOutput<String>('agentId');
    this.callMetadata = registerOutput<
            GoogleCloudContactcenterinsightsV1ConversationCallMetadataResponse>(
        'callMetadata');
    this.conversationId = registerOutput<String?>('conversationId');
    this.createTime = registerOutput<String>('createTime');
    this.dataSource = registerOutput<
            GoogleCloudContactcenterinsightsV1ConversationDataSourceResponse>(
        'dataSource');
    this.dialogflowIntents =
        registerOutput<Map<String, String>>('dialogflowIntents');
    this.duration = registerOutput<String>('duration');
    this.expireTime = registerOutput<String>('expireTime');
    this.labels = registerOutput<Map<String, String>>('labels');
    this.languageCode = registerOutput<String>('languageCode');
    this.latestAnalysis =
        registerOutput<GoogleCloudContactcenterinsightsV1AnalysisResponse>(
            'latestAnalysis');
    this.latestSummary = registerOutput<
            GoogleCloudContactcenterinsightsV1ConversationSummarizationSuggestionDataResponse>(
        'latestSummary');
    this.location = registerOutput<String>('location');
    this.medium = registerOutput<String>('medium');
    this.name = registerOutput<String>('name');
    this.obfuscatedUserId = registerOutput<String>('obfuscatedUserId');
    this.project = registerOutput<String>('project');
    this.runtimeAnnotations = registerOutput<
            List<GoogleCloudContactcenterinsightsV1RuntimeAnnotationResponse>>(
        'runtimeAnnotations');
    this.startTime = registerOutput<String>('startTime');
    this.transcript = registerOutput<
            GoogleCloudContactcenterinsightsV1ConversationTranscriptResponse>(
        'transcript');
    this.ttl = registerOutput<String>('ttl');
    this.turnCount = registerOutput<int>('turnCount');
    this.updateTime = registerOutput<String>('updateTime');
  }
}
