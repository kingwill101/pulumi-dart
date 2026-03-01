// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_contactcenterinsights_v1_analysis_response.dart';
import 'google_cloud_contactcenterinsights_v1_conversation_call_metadata_response.dart';
import 'google_cloud_contactcenterinsights_v1_conversation_data_source_response.dart';
import 'google_cloud_contactcenterinsights_v1_conversation_summarization_suggestion_data_response.dart';
import 'google_cloud_contactcenterinsights_v1_conversation_transcript_response.dart';
import 'google_cloud_contactcenterinsights_v1_runtime_annotation_response.dart';

/// Result data returned by getConversation.
class GetConversationResult {
  /// An opaque, user-specified string representing the human agent who handled the conversation.
  final String agentId;

  /// Call-specific metadata.
  final GoogleCloudContactcenterinsightsV1ConversationCallMetadataResponse
  callMetadata;

  /// The time at which the conversation was created.
  final String createTime;

  /// The source of the audio and transcription for the conversation.
  final GoogleCloudContactcenterinsightsV1ConversationDataSourceResponse
  dataSource;

  /// All the matched Dialogflow intents in the call. The key corresponds to a Dialogflow intent, format: projects/{project}/agent/{agent}/intents/{intent}
  final Map<String, String> dialogflowIntents;

  /// The duration of the conversation.
  final String duration;

  /// The time at which this conversation should expire. After this time, the conversation data and any associated analyses will be deleted.
  final String expireTime;

  /// A map for the user to specify any custom fields. A maximum of 20 labels per conversation is allowed, with a maximum of 256 characters per entry.
  final Map<String, String> labels;

  /// A user-specified language code for the conversation.
  final String languageCode;

  /// The conversation's latest analysis, if one exists.
  final GoogleCloudContactcenterinsightsV1AnalysisResponse latestAnalysis;

  /// Latest summary of the conversation.
  final GoogleCloudContactcenterinsightsV1ConversationSummarizationSuggestionDataResponse
  latestSummary;

  /// Immutable. The conversation medium, if unspecified will default to PHONE_CALL.
  final String medium;

  /// Immutable. The resource name of the conversation. Format: projects/{project}/locations/{location}/conversations/{conversation}
  final String name;

  /// Obfuscated user ID which the customer sent to us.
  final String obfuscatedUserId;

  /// The annotations that were generated during the customer and agent interaction.
  final List<GoogleCloudContactcenterinsightsV1RuntimeAnnotationResponse>
  runtimeAnnotations;

  /// The time at which the conversation started.
  final String startTime;

  /// The conversation transcript.
  final GoogleCloudContactcenterinsightsV1ConversationTranscriptResponse
  transcript;

  /// Input only. The TTL for this resource. If specified, then this TTL will be used to calculate the expire time.
  final String ttl;

  /// The number of turns in the conversation.
  final int turnCount;

  /// The most recent time at which the conversation was updated.
  final String updateTime;

  /// Creates a new [GetConversationResult].
  /// [agentId] An opaque, user-specified string representing the human agent who handled the conversation.
  /// [callMetadata] Call-specific metadata.
  /// [createTime] The time at which the conversation was created.
  /// [dataSource] The source of the audio and transcription for the conversation.
  /// [dialogflowIntents] All the matched Dialogflow intents in the call. The key corresponds to a Dialogflow intent, format: projects/{project}/agent/{agent}/intents/{intent}
  /// [duration] The duration of the conversation.
  /// [expireTime] The time at which this conversation should expire. After this time, the conversation data and any associated analyses will be deleted.
  /// [labels] A map for the user to specify any custom fields. A maximum of 20 labels per conversation is allowed, with a maximum of 256 characters per entry.
  /// [languageCode] A user-specified language code for the conversation.
  /// [latestAnalysis] The conversation's latest analysis, if one exists.
  /// [latestSummary] Latest summary of the conversation.
  /// [medium] Immutable. The conversation medium, if unspecified will default to PHONE_CALL.
  /// [name] Immutable. The resource name of the conversation. Format: projects/{project}/locations/{location}/conversations/{conversation}
  /// [obfuscatedUserId] Obfuscated user ID which the customer sent to us.
  /// [runtimeAnnotations] The annotations that were generated during the customer and agent interaction.
  /// [startTime] The time at which the conversation started.
  /// [transcript] The conversation transcript.
  /// [ttl] Input only. The TTL for this resource. If specified, then this TTL will be used to calculate the expire time.
  /// [turnCount] The number of turns in the conversation.
  /// [updateTime] The most recent time at which the conversation was updated.
  GetConversationResult({
    required this.agentId,
    required this.callMetadata,
    required this.createTime,
    required this.dataSource,
    required this.dialogflowIntents,
    required this.duration,
    required this.expireTime,
    required this.labels,
    required this.languageCode,
    required this.latestAnalysis,
    required this.latestSummary,
    required this.medium,
    required this.name,
    required this.obfuscatedUserId,
    required this.runtimeAnnotations,
    required this.startTime,
    required this.transcript,
    required this.ttl,
    required this.turnCount,
    required this.updateTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'agentId': agentId,
      'callMetadata': callMetadata.toMap(),
      'createTime': createTime,
      'dataSource': dataSource.toMap(),
      'dialogflowIntents': dialogflowIntents,
      'duration': duration,
      'expireTime': expireTime,
      'labels': labels,
      'languageCode': languageCode,
      'latestAnalysis': latestAnalysis.toMap(),
      'latestSummary': latestSummary.toMap(),
      'medium': medium,
      'name': name,
      'obfuscatedUserId': obfuscatedUserId,
      'runtimeAnnotations':
          pulumi.Input.encodeList<
            GoogleCloudContactcenterinsightsV1RuntimeAnnotationResponse,
            Map<String, dynamic>
          >(runtimeAnnotations, (value) => value.toMap()),
      'startTime': startTime,
      'transcript': transcript.toMap(),
      'ttl': ttl,
      'turnCount': turnCount,
      'updateTime': updateTime,
    };
  }

  factory GetConversationResult.fromMap(Map<String, dynamic> map) {
    return GetConversationResult(
      agentId: map['agentId'] as String,
      callMetadata:
          GoogleCloudContactcenterinsightsV1ConversationCallMetadataResponse.fromMap(
            (map['callMetadata'] as Map).cast<String, dynamic>(),
          ),
      createTime: map['createTime'] as String,
      dataSource:
          GoogleCloudContactcenterinsightsV1ConversationDataSourceResponse.fromMap(
            (map['dataSource'] as Map).cast<String, dynamic>(),
          ),
      dialogflowIntents: (map['dialogflowIntents'] as Map)
          .cast<String, String>(),
      duration: map['duration'] as String,
      expireTime: map['expireTime'] as String,
      labels: (map['labels'] as Map).cast<String, String>(),
      languageCode: map['languageCode'] as String,
      latestAnalysis:
          GoogleCloudContactcenterinsightsV1AnalysisResponse.fromMap(
            (map['latestAnalysis'] as Map).cast<String, dynamic>(),
          ),
      latestSummary:
          GoogleCloudContactcenterinsightsV1ConversationSummarizationSuggestionDataResponse.fromMap(
            (map['latestSummary'] as Map).cast<String, dynamic>(),
          ),
      medium: map['medium'] as String,
      name: map['name'] as String,
      obfuscatedUserId: map['obfuscatedUserId'] as String,
      runtimeAnnotations:
          pulumi.Input.decodeList<
            GoogleCloudContactcenterinsightsV1RuntimeAnnotationResponse
          >(
            map['runtimeAnnotations'],
            (value) =>
                GoogleCloudContactcenterinsightsV1RuntimeAnnotationResponse.fromMap(
                  (value as Map).cast<String, dynamic>(),
                ),
          ),
      startTime: map['startTime'] as String,
      transcript:
          GoogleCloudContactcenterinsightsV1ConversationTranscriptResponse.fromMap(
            (map['transcript'] as Map).cast<String, dynamic>(),
          ),
      ttl: map['ttl'] as String,
      turnCount: map['turnCount'] as int,
      updateTime: map['updateTime'] as String,
    );
  }
}
