// ignore_for_file: unused_element, unnecessary_cast

/// Dialogflow interaction data.
class GoogleCloudContactcenterinsightsV1DialogflowInteractionDataResponse {
  /// The confidence of the match ranging from 0.0 (completely uncertain) to 1.0 (completely certain).
  final double confidence;

  /// The Dialogflow intent resource path. Format: projects/{project}/agent/{agent}/intents/{intent}
  final String dialogflowIntentId;

  /// Creates a new [GoogleCloudContactcenterinsightsV1DialogflowInteractionDataResponse].
  /// [confidence] The confidence of the match ranging from 0.0 (completely uncertain) to 1.0 (completely certain).
  /// [dialogflowIntentId] The Dialogflow intent resource path. Format: projects/{project}/agent/{agent}/intents/{intent}
  GoogleCloudContactcenterinsightsV1DialogflowInteractionDataResponse({
    required this.confidence,
    required this.dialogflowIntentId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['confidence'] = confidence;
    map['dialogflowIntentId'] = dialogflowIntentId;
    return map;
  }

  factory GoogleCloudContactcenterinsightsV1DialogflowInteractionDataResponse.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudContactcenterinsightsV1DialogflowInteractionDataResponse(
      confidence: map['confidence'] as double,
      dialogflowIntentId: map['dialogflowIntentId'] as String,
    );
  }
}
