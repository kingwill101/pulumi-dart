// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'media_insights_pipeline_configuration_element_amazon_transcribe_call_analytics_processor_configuration_post_call_analytics_settings.dart';

class MediaInsightsPipelineConfigurationElementAmazonTranscribeCallAnalyticsProcessorConfiguration {
  /// Filter for category events to be delivered to insights target.
  final pulumi.Input<List<String>>? callAnalyticsStreamCategories;

  /// Labels all personally identifiable information (PII) identified in Utterance events.
  final pulumi.Input<String>? contentIdentificationType;

  /// Redacts all personally identifiable information (PII) identified in Utterance events.
  final pulumi.Input<String>? contentRedactionType;

  /// Enables partial result stabilization in Utterance events.
  final pulumi.Input<bool>? enablePartialResultsStabilization;

  /// Filters partial Utterance events from delivery to the insights target.
  final pulumi.Input<bool>? filterPartialResults;

  /// Language code for the transcription model.
  final pulumi.Input<String> languageCode;

  /// Name of custom language model for transcription.
  final pulumi.Input<String>? languageModelName;

  /// Level of stability to use when partial results stabilization is enabled.
  final pulumi.Input<String>? partialResultsStability;

  /// Types of personally identifiable information (PII) to redact from an Utterance event.
  final pulumi.Input<String>? piiEntityTypes;

  /// Settings for post call analytics.
  final pulumi.Input<
    MediaInsightsPipelineConfigurationElementAmazonTranscribeCallAnalyticsProcessorConfigurationPostCallAnalyticsSettings
  >?
  postCallAnalyticsSettings;

  /// Method for applying a vocabulary filter to Utterance events.
  final pulumi.Input<String>? vocabularyFilterMethod;

  /// Name of the custom vocabulary filter to use when processing Utterance events.
  final pulumi.Input<String>? vocabularyFilterName;

  /// Name of the custom vocabulary to use when processing Utterance events.
  final pulumi.Input<String>? vocabularyName;

  /// Creates a new [MediaInsightsPipelineConfigurationElementAmazonTranscribeCallAnalyticsProcessorConfiguration].
  /// [callAnalyticsStreamCategories] Filter for category events to be delivered to insights target.
  /// [contentIdentificationType] Labels all personally identifiable information (PII) identified in Utterance events.
  /// [contentRedactionType] Redacts all personally identifiable information (PII) identified in Utterance events.
  /// [enablePartialResultsStabilization] Enables partial result stabilization in Utterance events.
  /// [filterPartialResults] Filters partial Utterance events from delivery to the insights target.
  /// [languageCode] Language code for the transcription model.
  /// [languageModelName] Name of custom language model for transcription.
  /// [partialResultsStability] Level of stability to use when partial results stabilization is enabled.
  /// [piiEntityTypes] Types of personally identifiable information (PII) to redact from an Utterance event.
  /// [postCallAnalyticsSettings] Settings for post call analytics.
  /// [vocabularyFilterMethod] Method for applying a vocabulary filter to Utterance events.
  /// [vocabularyFilterName] Name of the custom vocabulary filter to use when processing Utterance events.
  /// [vocabularyName] Name of the custom vocabulary to use when processing Utterance events.
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
    return <String, dynamic>{
      'callAnalyticsStreamCategories': ?callAnalyticsStreamCategories,
      'contentIdentificationType': ?contentIdentificationType,
      'contentRedactionType': ?contentRedactionType,
      'enablePartialResultsStabilization': ?enablePartialResultsStabilization,
      'filterPartialResults': ?filterPartialResults,
      'languageCode': languageCode,
      'languageModelName': ?languageModelName,
      'partialResultsStability': ?partialResultsStability,
      'piiEntityTypes': ?piiEntityTypes,
      'postCallAnalyticsSettings':
          ?pulumi.Input.mapOptionalInputValue<
            MediaInsightsPipelineConfigurationElementAmazonTranscribeCallAnalyticsProcessorConfigurationPostCallAnalyticsSettings,
            Map<String, dynamic>
          >(postCallAnalyticsSettings, (value) => value.toMap()),
      'vocabularyFilterMethod': ?vocabularyFilterMethod,
      'vocabularyFilterName': ?vocabularyFilterName,
      'vocabularyName': ?vocabularyName,
    };
  }

  factory MediaInsightsPipelineConfigurationElementAmazonTranscribeCallAnalyticsProcessorConfiguration.fromMap(
    Map<String, dynamic> map,
  ) {
    return MediaInsightsPipelineConfigurationElementAmazonTranscribeCallAnalyticsProcessorConfiguration(
      callAnalyticsStreamCategories: (() {
        final guardedValue = map['callAnalyticsStreamCategories'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      contentIdentificationType: (() {
        final guardedValue = map['contentIdentificationType'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      contentRedactionType: (() {
        final guardedValue = map['contentRedactionType'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      enablePartialResultsStabilization: (() {
        final guardedValue = map['enablePartialResultsStabilization'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      filterPartialResults: (() {
        final guardedValue = map['filterPartialResults'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      languageCode: pulumi.Input.fromValue(map['languageCode'] as String),
      languageModelName: (() {
        final guardedValue = map['languageModelName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      partialResultsStability: (() {
        final guardedValue = map['partialResultsStability'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      piiEntityTypes: (() {
        final guardedValue = map['piiEntityTypes'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      postCallAnalyticsSettings: (() {
        final guardedValue = map['postCallAnalyticsSettings'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          MediaInsightsPipelineConfigurationElementAmazonTranscribeCallAnalyticsProcessorConfigurationPostCallAnalyticsSettings.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      vocabularyFilterMethod: (() {
        final guardedValue = map['vocabularyFilterMethod'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      vocabularyFilterName: (() {
        final guardedValue = map['vocabularyFilterName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      vocabularyName: (() {
        final guardedValue = map['vocabularyName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
