// ignore_for_file: unused_element, unnecessary_cast

import 'google_cloud_contactcenterinsights_v1_annotator_selector_summarization_config_summarization_model.dart';

/// Configuration for summarization.
class GoogleCloudContactcenterinsightsV1AnnotatorSelectorSummarizationConfig {
  /// Resource name of the Dialogflow conversation profile. Format: projects/{project}/locations/{location}/conversationProfiles/{conversation_profile}
  final String? conversationProfile;

  /// Default summarization model to be used.
  final GoogleCloudContactcenterinsightsV1AnnotatorSelectorSummarizationConfigSummarizationModel?
      summarizationModel;

  /// Creates a new [GoogleCloudContactcenterinsightsV1AnnotatorSelectorSummarizationConfig].
  /// [conversationProfile] Resource name of the Dialogflow conversation profile. Format: projects/{project}/locations/{location}/conversationProfiles/{conversation_profile}
  /// [summarizationModel] Default summarization model to be used.
  GoogleCloudContactcenterinsightsV1AnnotatorSelectorSummarizationConfig({
    this.conversationProfile,
    this.summarizationModel,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final conversationProfileValue = conversationProfile;
    if (conversationProfileValue != null) {
      map['conversationProfile'] = conversationProfileValue;
    }
    final summarizationModelValue = summarizationModel;
    if (summarizationModelValue != null) {
      map['summarizationModel'] = summarizationModelValue.value;
    }
    return map;
  }

  factory GoogleCloudContactcenterinsightsV1AnnotatorSelectorSummarizationConfig.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudContactcenterinsightsV1AnnotatorSelectorSummarizationConfig(
      conversationProfile: map['conversationProfile'] == null
          ? null
          : map['conversationProfile'] as String,
      summarizationModel: map['summarizationModel'] == null
          ? null
          : GoogleCloudContactcenterinsightsV1AnnotatorSelectorSummarizationConfigSummarizationModel
              .fromValue(map['summarizationModel'] as String),
    );
  }
}
