// ignore_for_file: unused_element, unnecessary_cast


class MediaInsightsPipelineConfigurationElementVoiceAnalyticsProcessorConfiguration {
  /// Enable speaker search.
  final String speakerSearchStatus;
  /// Enable voice tone analysis.
  final String voiceToneAnalysisStatus;

  /// Creates a new [MediaInsightsPipelineConfigurationElementVoiceAnalyticsProcessorConfiguration].
  /// [speakerSearchStatus] Enable speaker search.
  /// [voiceToneAnalysisStatus] Enable voice tone analysis.
  MediaInsightsPipelineConfigurationElementVoiceAnalyticsProcessorConfiguration({
    required this.speakerSearchStatus,
    required this.voiceToneAnalysisStatus,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'speakerSearchStatus': speakerSearchStatus,
      'voiceToneAnalysisStatus': voiceToneAnalysisStatus,
    };
  }

  factory MediaInsightsPipelineConfigurationElementVoiceAnalyticsProcessorConfiguration.fromMap(Map<String, dynamic> map) {
    return MediaInsightsPipelineConfigurationElementVoiceAnalyticsProcessorConfiguration(
      speakerSearchStatus: map['speakerSearchStatus'] as String,
      voiceToneAnalysisStatus: map['voiceToneAnalysisStatus'] as String,
    );
  }
}

