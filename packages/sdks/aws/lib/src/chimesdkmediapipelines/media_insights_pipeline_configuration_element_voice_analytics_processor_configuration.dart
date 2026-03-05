// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class MediaInsightsPipelineConfigurationElementVoiceAnalyticsProcessorConfiguration {
  /// Enable speaker search.
  final pulumi.Input<String> speakerSearchStatus;
  /// Enable voice tone analysis.
  final pulumi.Input<String> voiceToneAnalysisStatus;

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
      speakerSearchStatus: pulumi.Input.fromValue(map['speakerSearchStatus'] as String),
      voiceToneAnalysisStatus: pulumi.Input.fromValue(map['voiceToneAnalysisStatus'] as String),
    );
  }
}

