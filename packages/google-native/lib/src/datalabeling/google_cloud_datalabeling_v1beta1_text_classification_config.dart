// ignore_for_file: unused_element, unnecessary_cast

import 'google_cloud_datalabeling_v1beta1_sentiment_config.dart';

/// Config for text classification human labeling task.
class GoogleCloudDatalabelingV1beta1TextClassificationConfig {
  /// Optional. If allow_multi_label is true, contributors are able to choose multiple labels for one text segment.
  final bool? allowMultiLabel;

  /// Annotation spec set resource name.
  final String annotationSpecSet;

  /// Optional. Configs for sentiment selection. We deprecate sentiment analysis in data labeling side as it is incompatible with uCAIP.
  final GoogleCloudDatalabelingV1beta1SentimentConfig? sentimentConfig;

  /// Creates a new [GoogleCloudDatalabelingV1beta1TextClassificationConfig].
  /// [allowMultiLabel] Optional. If allow_multi_label is true, contributors are able to choose multiple labels for one text segment.
  /// [annotationSpecSet] Annotation spec set resource name.
  /// [sentimentConfig] Optional. Configs for sentiment selection. We deprecate sentiment analysis in data labeling side as it is incompatible with uCAIP.
  GoogleCloudDatalabelingV1beta1TextClassificationConfig({
    this.allowMultiLabel,
    required this.annotationSpecSet,
    this.sentimentConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowMultiLabel': ?allowMultiLabel,
      'annotationSpecSet': annotationSpecSet,
      'sentimentConfig': ?sentimentConfig == null
          ? null
          : sentimentConfig!.toMap(),
    };
  }

  factory GoogleCloudDatalabelingV1beta1TextClassificationConfig.fromMap(
    Map<String, dynamic> map,
  ) {
    return GoogleCloudDatalabelingV1beta1TextClassificationConfig(
      allowMultiLabel: map['allowMultiLabel'] == null
          ? null
          : map['allowMultiLabel'] as bool,
      annotationSpecSet: map['annotationSpecSet'] as String,
      sentimentConfig: map['sentimentConfig'] == null
          ? null
          : GoogleCloudDatalabelingV1beta1SentimentConfig.fromMap(
              (map['sentimentConfig'] as Map).cast<String, dynamic>(),
            ),
    );
  }
}
