// ignore_for_file: unused_element, unnecessary_cast

import 'google_cloud_contactcenterinsights_v1_sentiment_data_response.dart';

/// The data for an entity mention annotation. This represents a mention of an `Entity` in the conversation.
class GoogleCloudContactcenterinsightsV1EntityMentionDataResponse {
  /// The key of this entity in conversation entities. Can be used to retrieve the exact `Entity` this mention is attached to.
  final String entityUniqueId;

  /// Sentiment expressed for this mention of the entity.
  final GoogleCloudContactcenterinsightsV1SentimentDataResponse sentiment;

  /// The type of the entity mention.
  final String type;

  GoogleCloudContactcenterinsightsV1EntityMentionDataResponse({
    required this.entityUniqueId,
    required this.sentiment,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['entityUniqueId'] = entityUniqueId;
    map['sentiment'] = sentiment.toMap();
    map['type'] = type;
    return map;
  }

  factory GoogleCloudContactcenterinsightsV1EntityMentionDataResponse.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudContactcenterinsightsV1EntityMentionDataResponse(
      entityUniqueId: map['entityUniqueId'] as String,
      sentiment:
          GoogleCloudContactcenterinsightsV1SentimentDataResponse.fromMap(
              (map['sentiment'] as Map).cast<String, dynamic>()),
      type: map['type'] as String,
    );
  }
}
