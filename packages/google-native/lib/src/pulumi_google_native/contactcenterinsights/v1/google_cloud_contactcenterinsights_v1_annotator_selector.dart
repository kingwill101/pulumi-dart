// ignore_for_file: unused_element, unnecessary_cast

import 'google_cloud_contactcenterinsights_v1_annotator_selector_summarization_config.dart';

/// Selector of all available annotators and phrase matchers to run.
class GoogleCloudContactcenterinsightsV1AnnotatorSelector {
  /// The issue model to run. If not provided, the most recently deployed topic model will be used. The provided issue model will only be used for inference if the issue model is deployed and if run_issue_model_annotator is set to true. If more than one issue model is provided, only the first provided issue model will be used for inference.
  final List<String>? issueModels;

  /// The list of phrase matchers to run. If not provided, all active phrase matchers will be used. If inactive phrase matchers are provided, they will not be used. Phrase matchers will be run only if run_phrase_matcher_annotator is set to true. Format: projects/{project}/locations/{location}/phraseMatchers/{phrase_matcher}
  final List<String>? phraseMatchers;

  /// Whether to run the entity annotator.
  final bool? runEntityAnnotator;

  /// Whether to run the intent annotator.
  final bool? runIntentAnnotator;

  /// Whether to run the interruption annotator.
  final bool? runInterruptionAnnotator;

  /// Whether to run the issue model annotator. A model should have already been deployed for this to take effect.
  final bool? runIssueModelAnnotator;

  /// Whether to run the active phrase matcher annotator(s).
  final bool? runPhraseMatcherAnnotator;

  /// Whether to run the sentiment annotator.
  final bool? runSentimentAnnotator;

  /// Whether to run the silence annotator.
  final bool? runSilenceAnnotator;

  /// Whether to run the summarization annotator.
  final bool? runSummarizationAnnotator;

  /// Configuration for the summarization annotator.
  final GoogleCloudContactcenterinsightsV1AnnotatorSelectorSummarizationConfig?
      summarizationConfig;

  GoogleCloudContactcenterinsightsV1AnnotatorSelector({
    this.issueModels,
    this.phraseMatchers,
    this.runEntityAnnotator,
    this.runIntentAnnotator,
    this.runInterruptionAnnotator,
    this.runIssueModelAnnotator,
    this.runPhraseMatcherAnnotator,
    this.runSentimentAnnotator,
    this.runSilenceAnnotator,
    this.runSummarizationAnnotator,
    this.summarizationConfig,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final issueModelsValue = issueModels;
    if (issueModelsValue != null) {
      map['issueModels'] = issueModelsValue;
    }
    final phraseMatchersValue = phraseMatchers;
    if (phraseMatchersValue != null) {
      map['phraseMatchers'] = phraseMatchersValue;
    }
    final runEntityAnnotatorValue = runEntityAnnotator;
    if (runEntityAnnotatorValue != null) {
      map['runEntityAnnotator'] = runEntityAnnotatorValue;
    }
    final runIntentAnnotatorValue = runIntentAnnotator;
    if (runIntentAnnotatorValue != null) {
      map['runIntentAnnotator'] = runIntentAnnotatorValue;
    }
    final runInterruptionAnnotatorValue = runInterruptionAnnotator;
    if (runInterruptionAnnotatorValue != null) {
      map['runInterruptionAnnotator'] = runInterruptionAnnotatorValue;
    }
    final runIssueModelAnnotatorValue = runIssueModelAnnotator;
    if (runIssueModelAnnotatorValue != null) {
      map['runIssueModelAnnotator'] = runIssueModelAnnotatorValue;
    }
    final runPhraseMatcherAnnotatorValue = runPhraseMatcherAnnotator;
    if (runPhraseMatcherAnnotatorValue != null) {
      map['runPhraseMatcherAnnotator'] = runPhraseMatcherAnnotatorValue;
    }
    final runSentimentAnnotatorValue = runSentimentAnnotator;
    if (runSentimentAnnotatorValue != null) {
      map['runSentimentAnnotator'] = runSentimentAnnotatorValue;
    }
    final runSilenceAnnotatorValue = runSilenceAnnotator;
    if (runSilenceAnnotatorValue != null) {
      map['runSilenceAnnotator'] = runSilenceAnnotatorValue;
    }
    final runSummarizationAnnotatorValue = runSummarizationAnnotator;
    if (runSummarizationAnnotatorValue != null) {
      map['runSummarizationAnnotator'] = runSummarizationAnnotatorValue;
    }
    final summarizationConfigValue = summarizationConfig;
    if (summarizationConfigValue != null) {
      map['summarizationConfig'] = summarizationConfigValue.toMap();
    }
    return map;
  }

  factory GoogleCloudContactcenterinsightsV1AnnotatorSelector.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudContactcenterinsightsV1AnnotatorSelector(
      issueModels: map['issueModels'] == null
          ? null
          : (map['issueModels'] as List).cast<String>(),
      phraseMatchers: map['phraseMatchers'] == null
          ? null
          : (map['phraseMatchers'] as List).cast<String>(),
      runEntityAnnotator: map['runEntityAnnotator'] == null
          ? null
          : map['runEntityAnnotator'] as bool,
      runIntentAnnotator: map['runIntentAnnotator'] == null
          ? null
          : map['runIntentAnnotator'] as bool,
      runInterruptionAnnotator: map['runInterruptionAnnotator'] == null
          ? null
          : map['runInterruptionAnnotator'] as bool,
      runIssueModelAnnotator: map['runIssueModelAnnotator'] == null
          ? null
          : map['runIssueModelAnnotator'] as bool,
      runPhraseMatcherAnnotator: map['runPhraseMatcherAnnotator'] == null
          ? null
          : map['runPhraseMatcherAnnotator'] as bool,
      runSentimentAnnotator: map['runSentimentAnnotator'] == null
          ? null
          : map['runSentimentAnnotator'] as bool,
      runSilenceAnnotator: map['runSilenceAnnotator'] == null
          ? null
          : map['runSilenceAnnotator'] as bool,
      runSummarizationAnnotator: map['runSummarizationAnnotator'] == null
          ? null
          : map['runSummarizationAnnotator'] as bool,
      summarizationConfig: map['summarizationConfig'] == null
          ? null
          : GoogleCloudContactcenterinsightsV1AnnotatorSelectorSummarizationConfig
              .fromMap(
                  (map['summarizationConfig'] as Map).cast<String, dynamic>()),
    );
  }
}
