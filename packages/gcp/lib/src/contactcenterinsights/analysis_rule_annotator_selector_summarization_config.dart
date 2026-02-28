// ignore_for_file: unused_element, unnecessary_cast

class AnalysisRuleAnnotatorSelectorSummarizationConfig {
  /// Resource name of the Dialogflow conversation profile.
  /// Format:
  /// projects/{project}/locations/{location}/conversationProfiles/{conversation_profile}
  final String? conversationProfile;

  /// Default summarization model to be used.
  /// Possible values:
  /// SUMMARIZATION_MODEL_UNSPECIFIED
  /// BASELINE_MODEL
  /// BASELINE_MODEL_V2_0
  /// Possible values are: `BASELINE_MODEL`, `BASELINE_MODEL_V2_0`.
  final String? summarizationModel;

  /// Creates a new [AnalysisRuleAnnotatorSelectorSummarizationConfig].
  /// [conversationProfile] Resource name of the Dialogflow conversation profile.
  /// [summarizationModel] Default summarization model to be used.
  AnalysisRuleAnnotatorSelectorSummarizationConfig({
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
      map['summarizationModel'] = summarizationModelValue;
    }
    return map;
  }

  factory AnalysisRuleAnnotatorSelectorSummarizationConfig.fromMap(
      Map<String, dynamic> map) {
    return AnalysisRuleAnnotatorSelectorSummarizationConfig(
      conversationProfile: map['conversationProfile'] == null
          ? null
          : map['conversationProfile'] as String,
      summarizationModel: map['summarizationModel'] == null
          ? null
          : map['summarizationModel'] as String,
    );
  }
}
