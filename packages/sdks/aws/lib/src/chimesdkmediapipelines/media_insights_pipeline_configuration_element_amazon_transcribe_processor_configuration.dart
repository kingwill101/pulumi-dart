// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class MediaInsightsPipelineConfigurationElementAmazonTranscribeProcessorConfiguration {
  /// Labels all personally identifiable information (PII) identified in Transcript events.
  final pulumi.Input<String>? contentIdentificationType;
  /// Redacts all personally identifiable information (PII) identified in Transcript events.
  final pulumi.Input<String>? contentRedactionType;
  /// Enables partial result stabilization in Transcript events.
  final pulumi.Input<bool>? enablePartialResultsStabilization;
  /// Filters partial Utterance events from delivery to the insights target.
  final pulumi.Input<bool>? filterPartialResults;
  /// Language code for the transcription model.
  final pulumi.Input<String> languageCode;
  /// Name of custom language model for transcription.
  final pulumi.Input<String>? languageModelName;
  /// Level of stability to use when partial results stabilization is enabled.
  final pulumi.Input<String>? partialResultsStability;
  /// Types of personally identifiable information (PII) to redact from a Transcript event.
  final pulumi.Input<String>? piiEntityTypes;
  /// Enables speaker partitioning (diarization) in your Transcript events.
  final pulumi.Input<bool>? showSpeakerLabel;
  /// Method for applying a vocabulary filter to Transcript events.
  final pulumi.Input<String>? vocabularyFilterMethod;
  /// Name of the custom vocabulary filter to use when processing Transcript events.
  final pulumi.Input<String>? vocabularyFilterName;
  /// Name of the custom vocabulary to use when processing Transcript events.
  final pulumi.Input<String>? vocabularyName;

  /// Creates a new [MediaInsightsPipelineConfigurationElementAmazonTranscribeProcessorConfiguration].
  /// [contentIdentificationType] Labels all personally identifiable information (PII) identified in Transcript events.
  /// [contentRedactionType] Redacts all personally identifiable information (PII) identified in Transcript events.
  /// [enablePartialResultsStabilization] Enables partial result stabilization in Transcript events.
  /// [filterPartialResults] Filters partial Utterance events from delivery to the insights target.
  /// [languageCode] Language code for the transcription model.
  /// [languageModelName] Name of custom language model for transcription.
  /// [partialResultsStability] Level of stability to use when partial results stabilization is enabled.
  /// [piiEntityTypes] Types of personally identifiable information (PII) to redact from a Transcript event.
  /// [showSpeakerLabel] Enables speaker partitioning (diarization) in your Transcript events.
  /// [vocabularyFilterMethod] Method for applying a vocabulary filter to Transcript events.
  /// [vocabularyFilterName] Name of the custom vocabulary filter to use when processing Transcript events.
  /// [vocabularyName] Name of the custom vocabulary to use when processing Transcript events.
  const MediaInsightsPipelineConfigurationElementAmazonTranscribeProcessorConfiguration({
    this.contentIdentificationType,
    this.contentRedactionType,
    this.enablePartialResultsStabilization,
    this.filterPartialResults,
    required this.languageCode,
    this.languageModelName,
    this.partialResultsStability,
    this.piiEntityTypes,
    this.showSpeakerLabel,
    this.vocabularyFilterMethod,
    this.vocabularyFilterName,
    this.vocabularyName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'contentIdentificationType': ?contentIdentificationType,
      'contentRedactionType': ?contentRedactionType,
      'enablePartialResultsStabilization': ?enablePartialResultsStabilization,
      'filterPartialResults': ?filterPartialResults,
      'languageCode': languageCode,
      'languageModelName': ?languageModelName,
      'partialResultsStability': ?partialResultsStability,
      'piiEntityTypes': ?piiEntityTypes,
      'showSpeakerLabel': ?showSpeakerLabel,
      'vocabularyFilterMethod': ?vocabularyFilterMethod,
      'vocabularyFilterName': ?vocabularyFilterName,
      'vocabularyName': ?vocabularyName,
    };
  }

  factory MediaInsightsPipelineConfigurationElementAmazonTranscribeProcessorConfiguration.fromMap(Map<String, dynamic> map) {
    return MediaInsightsPipelineConfigurationElementAmazonTranscribeProcessorConfiguration(
      contentIdentificationType: (() { final guardedValue = map['contentIdentificationType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      contentRedactionType: (() { final guardedValue = map['contentRedactionType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      enablePartialResultsStabilization: (() { final guardedValue = map['enablePartialResultsStabilization']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      filterPartialResults: (() { final guardedValue = map['filterPartialResults']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      languageCode: pulumi.Input.fromValue(map['languageCode'] as String),
      languageModelName: (() { final guardedValue = map['languageModelName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      partialResultsStability: (() { final guardedValue = map['partialResultsStability']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      piiEntityTypes: (() { final guardedValue = map['piiEntityTypes']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      showSpeakerLabel: (() { final guardedValue = map['showSpeakerLabel']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      vocabularyFilterMethod: (() { final guardedValue = map['vocabularyFilterMethod']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      vocabularyFilterName: (() { final guardedValue = map['vocabularyFilterName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      vocabularyName: (() { final guardedValue = map['vocabularyName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
