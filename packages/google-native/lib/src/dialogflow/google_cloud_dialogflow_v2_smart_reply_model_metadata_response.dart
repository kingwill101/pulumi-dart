// ignore_for_file: unused_element, unnecessary_cast

/// Metadata for smart reply models.
class GoogleCloudDialogflowV2SmartReplyModelMetadataResponse {
  /// Optional. Type of the smart reply model. If not provided, model_type is used.
  final String trainingModelType;

  /// Creates a new [GoogleCloudDialogflowV2SmartReplyModelMetadataResponse].
  /// [trainingModelType] Optional. Type of the smart reply model. If not provided, model_type is used.
  GoogleCloudDialogflowV2SmartReplyModelMetadataResponse({
    required this.trainingModelType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'trainingModelType': trainingModelType};
  }

  factory GoogleCloudDialogflowV2SmartReplyModelMetadataResponse.fromMap(
    Map<String, dynamic> map,
  ) {
    return GoogleCloudDialogflowV2SmartReplyModelMetadataResponse(
      trainingModelType: map['trainingModelType'] as String,
    );
  }
}
