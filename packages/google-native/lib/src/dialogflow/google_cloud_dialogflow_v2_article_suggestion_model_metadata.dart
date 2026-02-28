// ignore_for_file: unused_element, unnecessary_cast

import 'google_cloud_dialogflow_v2_article_suggestion_model_metadata_training_model_type.dart';

/// Metadata for article suggestion models.
class GoogleCloudDialogflowV2ArticleSuggestionModelMetadata {
  /// Optional. Type of the article suggestion model. If not provided, model_type is used.
  final GoogleCloudDialogflowV2ArticleSuggestionModelMetadataTrainingModelType?
      trainingModelType;

  /// Creates a new [GoogleCloudDialogflowV2ArticleSuggestionModelMetadata].
  /// [trainingModelType] Optional. Type of the article suggestion model. If not provided, model_type is used.
  GoogleCloudDialogflowV2ArticleSuggestionModelMetadata({
    this.trainingModelType,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final trainingModelTypeValue = trainingModelType;
    if (trainingModelTypeValue != null) {
      map['trainingModelType'] = trainingModelTypeValue.value;
    }
    return map;
  }

  factory GoogleCloudDialogflowV2ArticleSuggestionModelMetadata.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudDialogflowV2ArticleSuggestionModelMetadata(
      trainingModelType: map['trainingModelType'] == null
          ? null
          : GoogleCloudDialogflowV2ArticleSuggestionModelMetadataTrainingModelType
              .fromValue(map['trainingModelType'] as String),
    );
  }
}
