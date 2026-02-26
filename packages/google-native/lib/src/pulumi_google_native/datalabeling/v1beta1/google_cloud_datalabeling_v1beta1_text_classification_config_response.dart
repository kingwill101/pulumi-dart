// ignore_for_file: unused_element, unnecessary_cast

import 'google_cloud_datalabeling_v1beta1_sentiment_config_response.dart';

/// Config for text classification human labeling task.
class GoogleCloudDatalabelingV1beta1TextClassificationConfigResponse {
  /// Optional. If allow_multi_label is true, contributors are able to choose multiple labels for one text segment.
  final bool allowMultiLabel;

  /// Annotation spec set resource name.
  final String annotationSpecSet;

  /// Optional. Configs for sentiment selection. We deprecate sentiment analysis in data labeling side as it is incompatible with uCAIP.
  final GoogleCloudDatalabelingV1beta1SentimentConfigResponse sentimentConfig;

  GoogleCloudDatalabelingV1beta1TextClassificationConfigResponse({
    required this.allowMultiLabel,
    required this.annotationSpecSet,
    required this.sentimentConfig,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['allowMultiLabel'] = allowMultiLabel;
    map['annotationSpecSet'] = annotationSpecSet;
    map['sentimentConfig'] = sentimentConfig.toMap();
    return map;
  }

  factory GoogleCloudDatalabelingV1beta1TextClassificationConfigResponse.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudDatalabelingV1beta1TextClassificationConfigResponse(
      allowMultiLabel: map['allowMultiLabel'] as bool,
      annotationSpecSet: map['annotationSpecSet'] as String,
      sentimentConfig:
          GoogleCloudDatalabelingV1beta1SentimentConfigResponse.fromMap(
              (map['sentimentConfig'] as Map).cast<String, dynamic>()),
    );
  }
}
