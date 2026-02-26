// ignore_for_file: unused_element, unnecessary_cast

import '../media_insights_pipeline_configuration_element_amazon_transcribe_call_analytics_processor_configuration_post_call_analytics_settings/media_insights_pipeline_configuration_element_amazon_transcribe_call_analytics_processor_configuration_post_call_analytics_settings.dart';

class MediaInsightsPipelineConfigurationElementAmazonTranscribeCallAnalyticsProcessorConfiguration {
  /// Filter for category events to be delivered to insights target.
  final List<String>? callAnalyticsStreamCategories;

  /// Labels all personally identifiable information (PII) identified in Utterance events.
  final String? contentIdentificationType;

  /// Redacts all personally identifiable information (PII) identified in Utterance events.
  final String? contentRedactionType;

  /// Enables partial result stabilization in Utterance events.
  final bool? enablePartialResultsStabilization;

  /// Filters partial Utterance events from delivery to the insights target.
  final bool? filterPartialResults;

  /// Language code for the transcription model.
  final String languageCode;

  /// Name of custom language model for transcription.
  final String? languageModelName;

  /// Level of stability to use when partial results stabilization is enabled.
  final String? partialResultsStability;

  /// Types of personally identifiable information (PII) to redact from an Utterance event.
  final String? piiEntityTypes;

  /// Settings for post call analytics.
  final MediaInsightsPipelineConfigurationElementAmazonTranscribeCallAnalyticsProcessorConfigurationPostCallAnalyticsSettings?
      postCallAnalyticsSettings;

  /// Method for applying a vocabulary filter to Utterance events.
  final String? vocabularyFilterMethod;

  /// Name of the custom vocabulary filter to use when processing Utterance events.
  final String? vocabularyFilterName;

  /// Name of the custom vocabulary to use when processing Utterance events.
  final String? vocabularyName;

  MediaInsightsPipelineConfigurationElementAmazonTranscribeCallAnalyticsProcessorConfiguration({
    this.callAnalyticsStreamCategories,
    this.contentIdentificationType,
    this.contentRedactionType,
    this.enablePartialResultsStabilization,
    this.filterPartialResults,
    required this.languageCode,
    this.languageModelName,
    this.partialResultsStability,
    this.piiEntityTypes,
    this.postCallAnalyticsSettings,
    this.vocabularyFilterMethod,
    this.vocabularyFilterName,
    this.vocabularyName,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final callAnalyticsStreamCategoriesValue = callAnalyticsStreamCategories;
    if (callAnalyticsStreamCategoriesValue != null) {
      map['callAnalyticsStreamCategories'] = callAnalyticsStreamCategoriesValue;
    }
    final contentIdentificationTypeValue = contentIdentificationType;
    if (contentIdentificationTypeValue != null) {
      map['contentIdentificationType'] = contentIdentificationTypeValue;
    }
    final contentRedactionTypeValue = contentRedactionType;
    if (contentRedactionTypeValue != null) {
      map['contentRedactionType'] = contentRedactionTypeValue;
    }
    final enablePartialResultsStabilizationValue =
        enablePartialResultsStabilization;
    if (enablePartialResultsStabilizationValue != null) {
      map['enablePartialResultsStabilization'] =
          enablePartialResultsStabilizationValue;
    }
    final filterPartialResultsValue = filterPartialResults;
    if (filterPartialResultsValue != null) {
      map['filterPartialResults'] = filterPartialResultsValue;
    }
    map['languageCode'] = languageCode;
    final languageModelNameValue = languageModelName;
    if (languageModelNameValue != null) {
      map['languageModelName'] = languageModelNameValue;
    }
    final partialResultsStabilityValue = partialResultsStability;
    if (partialResultsStabilityValue != null) {
      map['partialResultsStability'] = partialResultsStabilityValue;
    }
    final piiEntityTypesValue = piiEntityTypes;
    if (piiEntityTypesValue != null) {
      map['piiEntityTypes'] = piiEntityTypesValue;
    }
    final postCallAnalyticsSettingsValue = postCallAnalyticsSettings;
    if (postCallAnalyticsSettingsValue != null) {
      map['postCallAnalyticsSettings'] = postCallAnalyticsSettingsValue.toMap();
    }
    final vocabularyFilterMethodValue = vocabularyFilterMethod;
    if (vocabularyFilterMethodValue != null) {
      map['vocabularyFilterMethod'] = vocabularyFilterMethodValue;
    }
    final vocabularyFilterNameValue = vocabularyFilterName;
    if (vocabularyFilterNameValue != null) {
      map['vocabularyFilterName'] = vocabularyFilterNameValue;
    }
    final vocabularyNameValue = vocabularyName;
    if (vocabularyNameValue != null) {
      map['vocabularyName'] = vocabularyNameValue;
    }
    return map;
  }

  factory MediaInsightsPipelineConfigurationElementAmazonTranscribeCallAnalyticsProcessorConfiguration.fromMap(
      Map<String, dynamic> map) {
    return MediaInsightsPipelineConfigurationElementAmazonTranscribeCallAnalyticsProcessorConfiguration(
      callAnalyticsStreamCategories:
          map['callAnalyticsStreamCategories'] == null
              ? null
              : (map['callAnalyticsStreamCategories'] as List).cast<String>(),
      contentIdentificationType: map['contentIdentificationType'] == null
          ? null
          : map['contentIdentificationType'] as String,
      contentRedactionType: map['contentRedactionType'] == null
          ? null
          : map['contentRedactionType'] as String,
      enablePartialResultsStabilization:
          map['enablePartialResultsStabilization'] == null
              ? null
              : map['enablePartialResultsStabilization'] as bool,
      filterPartialResults: map['filterPartialResults'] == null
          ? null
          : map['filterPartialResults'] as bool,
      languageCode: map['languageCode'] as String,
      languageModelName: map['languageModelName'] == null
          ? null
          : map['languageModelName'] as String,
      partialResultsStability: map['partialResultsStability'] == null
          ? null
          : map['partialResultsStability'] as String,
      piiEntityTypes: map['piiEntityTypes'] == null
          ? null
          : map['piiEntityTypes'] as String,
      postCallAnalyticsSettings: map['postCallAnalyticsSettings'] == null
          ? null
          : MediaInsightsPipelineConfigurationElementAmazonTranscribeCallAnalyticsProcessorConfigurationPostCallAnalyticsSettings
              .fromMap((map['postCallAnalyticsSettings'] as Map)
                  .cast<String, dynamic>()),
      vocabularyFilterMethod: map['vocabularyFilterMethod'] == null
          ? null
          : map['vocabularyFilterMethod'] as String,
      vocabularyFilterName: map['vocabularyFilterName'] == null
          ? null
          : map['vocabularyFilterName'] as String,
      vocabularyName: map['vocabularyName'] == null
          ? null
          : map['vocabularyName'] as String,
    );
  }
}
