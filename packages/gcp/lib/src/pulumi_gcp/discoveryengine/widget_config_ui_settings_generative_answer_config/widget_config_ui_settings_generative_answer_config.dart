// ignore_for_file: unused_element, unnecessary_cast

class WidgetConfigUiSettingsGenerativeAnswerConfig {
  /// Whether generated answer contains suggested related questions.
  final bool? disableRelatedQuestions;

  /// Specifies whether to filter out queries that are adversarial.
  final bool? ignoreAdversarialQuery;

  /// Specifies whether to filter out queries that are not relevant to the content.
  final bool? ignoreLowRelevantContent;

  /// Specifies whether to filter out queries that are not answer-seeking.
  /// The default value is <span pulumi-lang-nodejs="`false`" pulumi-lang-dotnet="`False`" pulumi-lang-go="`false`" pulumi-lang-python="`false`" pulumi-lang-yaml="`false`" pulumi-lang-java="`false`">`false`</span>. No answer is returned if the search query
  /// is classified as a non-answer seeking query.
  /// If this field is set to <span pulumi-lang-nodejs="`true`" pulumi-lang-dotnet="`True`" pulumi-lang-go="`true`" pulumi-lang-python="`true`" pulumi-lang-yaml="`true`" pulumi-lang-java="`true`">`true`</span>, we skip generating answers for
  /// non-answer seeking queries and return fallback messages instead.
  final bool? ignoreNonAnswerSeekingQuery;

  /// Source of image returned in the answer.
  /// Possible values are: `ALL_AVAILABLE_SOURCES`, `CORPUS_IMAGE_ONLY`, `FIGURE_GENERATION_ONLY`.
  final String? imageSource;

  /// Language code for Summary. Use language tags defined by
  /// [BCP47](https://www.rfc-editor.org/rfc/bcp/bcp47.txt). Note: This
  /// is an experimental feature.
  final String? languageCode;

  /// Max rephrase steps. The max number is 5 steps. If not set or
  /// set to < 1, it will be set to 1 by default.
  final int? maxRephraseSteps;

  /// Text at the beginning of the prompt that instructs the model that generates the answer.
  final String? modelPromptPreamble;

  /// The model version used to generate the answer.
  final String? modelVersion;

  /// The number of top results to generate the answer from. Up to 10.
  final int? resultCount;

  WidgetConfigUiSettingsGenerativeAnswerConfig({
    this.disableRelatedQuestions,
    this.ignoreAdversarialQuery,
    this.ignoreLowRelevantContent,
    this.ignoreNonAnswerSeekingQuery,
    this.imageSource,
    this.languageCode,
    this.maxRephraseSteps,
    this.modelPromptPreamble,
    this.modelVersion,
    this.resultCount,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final disableRelatedQuestionsValue = disableRelatedQuestions;
    if (disableRelatedQuestionsValue != null) {
      map['disableRelatedQuestions'] = disableRelatedQuestionsValue;
    }
    final ignoreAdversarialQueryValue = ignoreAdversarialQuery;
    if (ignoreAdversarialQueryValue != null) {
      map['ignoreAdversarialQuery'] = ignoreAdversarialQueryValue;
    }
    final ignoreLowRelevantContentValue = ignoreLowRelevantContent;
    if (ignoreLowRelevantContentValue != null) {
      map['ignoreLowRelevantContent'] = ignoreLowRelevantContentValue;
    }
    final ignoreNonAnswerSeekingQueryValue = ignoreNonAnswerSeekingQuery;
    if (ignoreNonAnswerSeekingQueryValue != null) {
      map['ignoreNonAnswerSeekingQuery'] = ignoreNonAnswerSeekingQueryValue;
    }
    final imageSourceValue = imageSource;
    if (imageSourceValue != null) {
      map['imageSource'] = imageSourceValue;
    }
    final languageCodeValue = languageCode;
    if (languageCodeValue != null) {
      map['languageCode'] = languageCodeValue;
    }
    final maxRephraseStepsValue = maxRephraseSteps;
    if (maxRephraseStepsValue != null) {
      map['maxRephraseSteps'] = maxRephraseStepsValue;
    }
    final modelPromptPreambleValue = modelPromptPreamble;
    if (modelPromptPreambleValue != null) {
      map['modelPromptPreamble'] = modelPromptPreambleValue;
    }
    final modelVersionValue = modelVersion;
    if (modelVersionValue != null) {
      map['modelVersion'] = modelVersionValue;
    }
    final resultCountValue = resultCount;
    if (resultCountValue != null) {
      map['resultCount'] = resultCountValue;
    }
    return map;
  }

  factory WidgetConfigUiSettingsGenerativeAnswerConfig.fromMap(
      Map<String, dynamic> map) {
    return WidgetConfigUiSettingsGenerativeAnswerConfig(
      disableRelatedQuestions: map['disableRelatedQuestions'] == null
          ? null
          : map['disableRelatedQuestions'] as bool,
      ignoreAdversarialQuery: map['ignoreAdversarialQuery'] == null
          ? null
          : map['ignoreAdversarialQuery'] as bool,
      ignoreLowRelevantContent: map['ignoreLowRelevantContent'] == null
          ? null
          : map['ignoreLowRelevantContent'] as bool,
      ignoreNonAnswerSeekingQuery: map['ignoreNonAnswerSeekingQuery'] == null
          ? null
          : map['ignoreNonAnswerSeekingQuery'] as bool,
      imageSource:
          map['imageSource'] == null ? null : map['imageSource'] as String,
      languageCode:
          map['languageCode'] == null ? null : map['languageCode'] as String,
      maxRephraseSteps: map['maxRephraseSteps'] == null
          ? null
          : map['maxRephraseSteps'] as int,
      modelPromptPreamble: map['modelPromptPreamble'] == null
          ? null
          : map['modelPromptPreamble'] as String,
      modelVersion:
          map['modelVersion'] == null ? null : map['modelVersion'] as String,
      resultCount:
          map['resultCount'] == null ? null : map['resultCount'] as int,
    );
  }
}
