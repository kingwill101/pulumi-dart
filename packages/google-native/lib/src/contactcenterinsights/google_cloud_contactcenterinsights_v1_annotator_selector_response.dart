// ignore_for_file: unused_element, unnecessary_cast

import 'google_cloud_contactcenterinsights_v1_annotator_selector_summarization_config_response.dart';

/// Selector of all available annotators and phrase matchers to run.
class GoogleCloudContactcenterinsightsV1AnnotatorSelectorResponse {
  /// The issue model to run. If not provided, the most recently deployed topic model will be used. The provided issue model will only be used for inference if the issue model is deployed and if run_issue_model_annotator is set to true. If more than one issue model is provided, only the first provided issue model will be used for inference.
  final List<String> issueModels;

  /// The list of phrase matchers to run. If not provided, all active phrase matchers will be used. If inactive phrase matchers are provided, they will not be used. Phrase matchers will be run only if run_phrase_matcher_annotator is set to true. Format: projects/{project}/locations/{location}/phraseMatchers/{phrase_matcher}
  final List<String> phraseMatchers;

  /// Whether to run the entity annotator.
  final bool runEntityAnnotator;

  /// Whether to run the intent annotator.
  final bool runIntentAnnotator;

  /// Whether to run the interruption annotator.
  final bool runInterruptionAnnotator;

  /// Whether to run the issue model annotator. A model should have already been deployed for this to take effect.
  final bool runIssueModelAnnotator;

  /// Whether to run the active phrase matcher annotator(s).
  final bool runPhraseMatcherAnnotator;

  /// Whether to run the sentiment annotator.
  final bool runSentimentAnnotator;

  /// Whether to run the silence annotator.
  final bool runSilenceAnnotator;

  /// Whether to run the summarization annotator.
  final bool runSummarizationAnnotator;

  /// Configuration for the summarization annotator.
  final GoogleCloudContactcenterinsightsV1AnnotatorSelectorSummarizationConfigResponse
      summarizationConfig;

  /// Creates a new [GoogleCloudContactcenterinsightsV1AnnotatorSelectorResponse].
  /// [issueModels] The issue model to run. If not provided, the most recently deployed topic model will be used. The provided issue model will only be used for inference if the issue model is deployed and if run_issue_model_annotator is set to true. If more than one issue model is provided, only the first provided issue model will be used for inference.
  /// [phraseMatchers] The list of phrase matchers to run. If not provided, all active phrase matchers will be used. If inactive phrase matchers are provided, they will not be used. Phrase matchers will be run only if run_phrase_matcher_annotator is set to true. Format: projects/{project}/locations/{location}/phraseMatchers/{phrase_matcher}
  /// [runEntityAnnotator] Whether to run the entity annotator.
  /// [runIntentAnnotator] Whether to run the intent annotator.
  /// [runInterruptionAnnotator] Whether to run the interruption annotator.
  /// [runIssueModelAnnotator] Whether to run the issue model annotator. A model should have already been deployed for this to take effect.
  /// [runPhraseMatcherAnnotator] Whether to run the active phrase matcher annotator(s).
  /// [runSentimentAnnotator] Whether to run the sentiment annotator.
  /// [runSilenceAnnotator] Whether to run the silence annotator.
  /// [runSummarizationAnnotator] Whether to run the summarization annotator.
  /// [summarizationConfig] Configuration for the summarization annotator.
  GoogleCloudContactcenterinsightsV1AnnotatorSelectorResponse({
    required this.issueModels,
    required this.phraseMatchers,
    required this.runEntityAnnotator,
    required this.runIntentAnnotator,
    required this.runInterruptionAnnotator,
    required this.runIssueModelAnnotator,
    required this.runPhraseMatcherAnnotator,
    required this.runSentimentAnnotator,
    required this.runSilenceAnnotator,
    required this.runSummarizationAnnotator,
    required this.summarizationConfig,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['issueModels'] = issueModels;
    map['phraseMatchers'] = phraseMatchers;
    map['runEntityAnnotator'] = runEntityAnnotator;
    map['runIntentAnnotator'] = runIntentAnnotator;
    map['runInterruptionAnnotator'] = runInterruptionAnnotator;
    map['runIssueModelAnnotator'] = runIssueModelAnnotator;
    map['runPhraseMatcherAnnotator'] = runPhraseMatcherAnnotator;
    map['runSentimentAnnotator'] = runSentimentAnnotator;
    map['runSilenceAnnotator'] = runSilenceAnnotator;
    map['runSummarizationAnnotator'] = runSummarizationAnnotator;
    map['summarizationConfig'] = summarizationConfig.toMap();
    return map;
  }

  factory GoogleCloudContactcenterinsightsV1AnnotatorSelectorResponse.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudContactcenterinsightsV1AnnotatorSelectorResponse(
      issueModels: (map['issueModels'] as List).cast<String>(),
      phraseMatchers: (map['phraseMatchers'] as List).cast<String>(),
      runEntityAnnotator: map['runEntityAnnotator'] as bool,
      runIntentAnnotator: map['runIntentAnnotator'] as bool,
      runInterruptionAnnotator: map['runInterruptionAnnotator'] as bool,
      runIssueModelAnnotator: map['runIssueModelAnnotator'] as bool,
      runPhraseMatcherAnnotator: map['runPhraseMatcherAnnotator'] as bool,
      runSentimentAnnotator: map['runSentimentAnnotator'] as bool,
      runSilenceAnnotator: map['runSilenceAnnotator'] as bool,
      runSummarizationAnnotator: map['runSummarizationAnnotator'] as bool,
      summarizationConfig:
          GoogleCloudContactcenterinsightsV1AnnotatorSelectorSummarizationConfigResponse
              .fromMap(
                  (map['summarizationConfig'] as Map).cast<String, dynamic>()),
    );
  }
}
