// ignore_for_file: unused_element, unnecessary_cast

import 'analysis_rule_annotator_selector_qa_config.dart';
import 'analysis_rule_annotator_selector_summarization_config.dart';

class AnalysisRuleAnnotatorSelector {
  /// The issue model to run. If not provided, the most recently deployed topic
  /// model will be used. The provided issue model will only be used for
  /// inference if the issue model is deployed and if run_issue_model_annotator
  /// is set to true. If more than one issue model is provided, only the first
  /// provided issue model will be used for inference.
  final List<String>? issueModels;

  /// The list of phrase matchers to run. If not provided, all active phrase
  /// matchers will be used. If inactive phrase matchers are provided, they will
  /// not be used. Phrase matchers will be run only if
  /// run_phrase_matcher_annotator is set to true. Format:
  /// projects/{project}/locations/{location}/phraseMatchers/{phrase_matcher}
  final List<String>? phraseMatchers;

  /// Configuration for the QA feature.
  /// Structure is documented below.
  final AnalysisRuleAnnotatorSelectorQaConfig? qaConfig;

  /// Whether to run the entity annotator.
  final bool? runEntityAnnotator;

  /// Whether to run the intent annotator.
  final bool? runIntentAnnotator;

  /// Whether to run the interruption annotator.
  final bool? runInterruptionAnnotator;

  /// Whether to run the issue model annotator. A model should have already been
  /// deployed for this to take effect.
  final bool? runIssueModelAnnotator;

  /// Whether to run the active phrase matcher annotator(s).
  final bool? runPhraseMatcherAnnotator;

  /// Whether to run the QA annotator.
  final bool? runQaAnnotator;

  /// Whether to run the sentiment annotator.
  final bool? runSentimentAnnotator;

  /// Whether to run the silence annotator.
  final bool? runSilenceAnnotator;

  /// Whether to run the summarization annotator.
  final bool? runSummarizationAnnotator;

  /// Configuration for summarization.
  /// Structure is documented below.
  final AnalysisRuleAnnotatorSelectorSummarizationConfig? summarizationConfig;

  /// Creates a new [AnalysisRuleAnnotatorSelector].
  /// [issueModels] The issue model to run. If not provided, the most recently deployed topic
  /// [phraseMatchers] The list of phrase matchers to run. If not provided, all active phrase
  /// [qaConfig] Configuration for the QA feature.
  /// [runEntityAnnotator] Whether to run the entity annotator.
  /// [runIntentAnnotator] Whether to run the intent annotator.
  /// [runInterruptionAnnotator] Whether to run the interruption annotator.
  /// [runIssueModelAnnotator] Whether to run the issue model annotator. A model should have already been
  /// [runPhraseMatcherAnnotator] Whether to run the active phrase matcher annotator(s).
  /// [runQaAnnotator] Whether to run the QA annotator.
  /// [runSentimentAnnotator] Whether to run the sentiment annotator.
  /// [runSilenceAnnotator] Whether to run the silence annotator.
  /// [runSummarizationAnnotator] Whether to run the summarization annotator.
  /// [summarizationConfig] Configuration for summarization.
  AnalysisRuleAnnotatorSelector({
    this.issueModels,
    this.phraseMatchers,
    this.qaConfig,
    this.runEntityAnnotator,
    this.runIntentAnnotator,
    this.runInterruptionAnnotator,
    this.runIssueModelAnnotator,
    this.runPhraseMatcherAnnotator,
    this.runQaAnnotator,
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
    final qaConfigValue = qaConfig;
    if (qaConfigValue != null) {
      map['qaConfig'] = qaConfigValue.toMap();
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
    final runQaAnnotatorValue = runQaAnnotator;
    if (runQaAnnotatorValue != null) {
      map['runQaAnnotator'] = runQaAnnotatorValue;
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

  factory AnalysisRuleAnnotatorSelector.fromMap(Map<String, dynamic> map) {
    return AnalysisRuleAnnotatorSelector(
      issueModels: map['issueModels'] == null
          ? null
          : (map['issueModels'] as List).cast<String>(),
      phraseMatchers: map['phraseMatchers'] == null
          ? null
          : (map['phraseMatchers'] as List).cast<String>(),
      qaConfig: map['qaConfig'] == null
          ? null
          : AnalysisRuleAnnotatorSelectorQaConfig.fromMap(
              (map['qaConfig'] as Map).cast<String, dynamic>()),
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
      runQaAnnotator:
          map['runQaAnnotator'] == null ? null : map['runQaAnnotator'] as bool,
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
          : AnalysisRuleAnnotatorSelectorSummarizationConfig.fromMap(
              (map['summarizationConfig'] as Map).cast<String, dynamic>()),
    );
  }
}
