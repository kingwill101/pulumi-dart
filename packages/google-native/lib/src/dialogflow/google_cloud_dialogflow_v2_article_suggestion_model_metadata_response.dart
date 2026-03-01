// ignore_for_file: unused_element, unnecessary_cast

/// Metadata for article suggestion models.
class GoogleCloudDialogflowV2ArticleSuggestionModelMetadataResponse {
  /// Optional. Type of the article suggestion model. If not provided, model_type is used.
  final String trainingModelType;

  /// Creates a new [GoogleCloudDialogflowV2ArticleSuggestionModelMetadataResponse].
  /// [trainingModelType] Optional. Type of the article suggestion model. If not provided, model_type is used.
  GoogleCloudDialogflowV2ArticleSuggestionModelMetadataResponse({
    required this.trainingModelType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'trainingModelType': trainingModelType};
  }

  factory GoogleCloudDialogflowV2ArticleSuggestionModelMetadataResponse.fromMap(
    Map<String, dynamic> map,
  ) {
    return GoogleCloudDialogflowV2ArticleSuggestionModelMetadataResponse(
      trainingModelType: map['trainingModelType'] as String,
    );
  }
}
