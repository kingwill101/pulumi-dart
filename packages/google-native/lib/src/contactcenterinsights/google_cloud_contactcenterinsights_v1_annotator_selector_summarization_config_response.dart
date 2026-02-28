// ignore_for_file: unused_element, unnecessary_cast

/// Configuration for summarization.
class GoogleCloudContactcenterinsightsV1AnnotatorSelectorSummarizationConfigResponse {
  /// Resource name of the Dialogflow conversation profile. Format: projects/{project}/locations/{location}/conversationProfiles/{conversation_profile}
  final String conversationProfile;

  /// Default summarization model to be used.
  final String summarizationModel;

  /// Creates a new [GoogleCloudContactcenterinsightsV1AnnotatorSelectorSummarizationConfigResponse].
  /// [conversationProfile] Resource name of the Dialogflow conversation profile. Format: projects/{project}/locations/{location}/conversationProfiles/{conversation_profile}
  /// [summarizationModel] Default summarization model to be used.
  GoogleCloudContactcenterinsightsV1AnnotatorSelectorSummarizationConfigResponse({
    required this.conversationProfile,
    required this.summarizationModel,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['conversationProfile'] = conversationProfile;
    map['summarizationModel'] = summarizationModel;
    return map;
  }

  factory GoogleCloudContactcenterinsightsV1AnnotatorSelectorSummarizationConfigResponse.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudContactcenterinsightsV1AnnotatorSelectorSummarizationConfigResponse(
      conversationProfile: map['conversationProfile'] as String,
      summarizationModel: map['summarizationModel'] as String,
    );
  }
}
