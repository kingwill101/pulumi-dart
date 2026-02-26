// ignore_for_file: unused_element, unnecessary_cast

class MediaInsightsPipelineConfigurationElementVoiceAnalyticsProcessorConfiguration {
  /// Enable speaker search.
  final String speakerSearchStatus;

  /// Enable voice tone analysis.
  final String voiceToneAnalysisStatus;

  MediaInsightsPipelineConfigurationElementVoiceAnalyticsProcessorConfiguration({
    required this.speakerSearchStatus,
    required this.voiceToneAnalysisStatus,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['speakerSearchStatus'] = speakerSearchStatus;
    map['voiceToneAnalysisStatus'] = voiceToneAnalysisStatus;
    return map;
  }

  factory MediaInsightsPipelineConfigurationElementVoiceAnalyticsProcessorConfiguration.fromMap(
      Map<String, dynamic> map) {
    return MediaInsightsPipelineConfigurationElementVoiceAnalyticsProcessorConfiguration(
      speakerSearchStatus: map['speakerSearchStatus'] as String,
      voiceToneAnalysisStatus: map['voiceToneAnalysisStatus'] as String,
    );
  }
}
