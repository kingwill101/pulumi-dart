// ignore_for_file: unused_element, unnecessary_cast

class MediaInsightsPipelineConfigurationElementAmazonTranscribeProcessorConfiguration {
  /// Labels all personally identifiable information (PII) identified in Transcript events.
  final String? contentIdentificationType;

  /// Redacts all personally identifiable information (PII) identified in Transcript events.
  final String? contentRedactionType;

  /// Enables partial result stabilization in Transcript events.
  final bool? enablePartialResultsStabilization;

  /// Filters partial Utterance events from delivery to the insights target.
  final bool? filterPartialResults;

  /// Language code for the transcription model.
  final String languageCode;

  /// Name of custom language model for transcription.
  final String? languageModelName;

  /// Level of stability to use when partial results stabilization is enabled.
  final String? partialResultsStability;

  /// Types of personally identifiable information (PII) to redact from a Transcript event.
  final String? piiEntityTypes;

  /// Enables speaker partitioning (diarization) in your Transcript events.
  final bool? showSpeakerLabel;

  /// Method for applying a vocabulary filter to Transcript events.
  final String? vocabularyFilterMethod;

  /// Name of the custom vocabulary filter to use when processing Transcript events.
  final String? vocabularyFilterName;

  /// Name of the custom vocabulary to use when processing Transcript events.
  final String? vocabularyName;

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
  MediaInsightsPipelineConfigurationElementAmazonTranscribeProcessorConfiguration({
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

  factory MediaInsightsPipelineConfigurationElementAmazonTranscribeProcessorConfiguration.fromMap(
    Map<String, dynamic> map,
  ) {
    return MediaInsightsPipelineConfigurationElementAmazonTranscribeProcessorConfiguration(
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
      showSpeakerLabel: map['showSpeakerLabel'] == null
          ? null
          : map['showSpeakerLabel'] as bool,
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
