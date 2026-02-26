// ignore_for_file: unused_element, unnecessary_cast

import 'google_cloud_contactcenterinsights_v1_sentiment_data_response.dart';

/// One channel of conversation-level sentiment data.
class GoogleCloudContactcenterinsightsV1ConversationLevelSentimentResponse {
  /// The channel of the audio that the data applies to.
  final int channelTag;

  /// Data specifying sentiment.
  final GoogleCloudContactcenterinsightsV1SentimentDataResponse sentimentData;

  GoogleCloudContactcenterinsightsV1ConversationLevelSentimentResponse({
    required this.channelTag,
    required this.sentimentData,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['channelTag'] = channelTag;
    map['sentimentData'] = sentimentData.toMap();
    return map;
  }

  factory GoogleCloudContactcenterinsightsV1ConversationLevelSentimentResponse.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudContactcenterinsightsV1ConversationLevelSentimentResponse(
      channelTag: map['channelTag'] as int,
      sentimentData:
          GoogleCloudContactcenterinsightsV1SentimentDataResponse.fromMap(
              (map['sentimentData'] as Map).cast<String, dynamic>()),
    );
  }
}
